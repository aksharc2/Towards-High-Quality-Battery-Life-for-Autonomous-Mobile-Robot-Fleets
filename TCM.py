# -*- coding: utf-8 -*-

# Updated - if charge + charge_rate > emax
import numpy as np
import matplotlib.pyplot as plt
import time
import math
from operator import itemgetter
import pandas as pd
import ast


File_Execution = True # True if parameters to be collected from Setting.csv file.
File_name = 'Experiment_Results.csv'

q = 1 # importance to battery degradation. higher value is higher importance

RR = 1 # print("------------------  Error_Introduced -----------------------") # Stable , Reccurance, Error_Introduced
limit_charge = 1 # 1 if charge in last charging period is less than charge required for priority task 0 otherwise
 # 1 if reccuring 0 otherwise



def TCM_Algorithm_Initial_Conditions():    # Parameters created      
    # Parameters for Setup
    Period_duration=600/3600 # Duration of each period in hrs
    Working_Period = 4 # working period lenght in hrs
    T = int(Working_Period/Period_duration)  # Number of periods
    R =  1  # Number of robots
    C = 1 # Number of charging stations
    S=2     # Number of sensors installed on robots
    W = 5  # Number of non-navigation tasks
    W_N = 7 # Number of navigation tasks
    div = 10 # Number of divisions while charging
    bis_option=1 # 0 obj2 penalize SOC dist from thresholds; 1 obj2 penalizes energy waste; 1 with q=0 only downtown but SOC between thresholds (baseline)

    # create sets
    Times = range(0, T)     # Set of periods
    Robots = range(0, R)    # Set of robots
    Non_Navigation_Tasks = range(0, W)  # Set of non-navigation tasks, e.g., face recognition
    Navigation_Tasks=range(0,W_N) # Set of navigation paths

    # Battery Energy Levels
    Ebat = 111.0     # Battery capacity (Wh)
    Edod = 0.45 * Ebat   # Depth of Discharge
    Emax =  0.75 * Ebat  # Preferred max charge level
    Charging_time=0.75 # hrs to completely recharge the battery
    
    # Parameters that must be received from function (TO MODIFY)
    E_Balance_Zero={i:np.random.uniform(low=Edod, high=Emax, size=None) for i in Robots}     # Initial energy balance (Wh)
    # E_Balance_Zero = {0: 64.31439374663654, 1: 52.21320036939914, 2: 77.34146301958934, 3: 75.02823021310405, 4: 53.65994638706177, 5: 71.36960910395081, 6: 68.84093321997493, 7: 64.3905773833735}

    
    # Parameters for Robot navigation and distance from stations
    Dist_change_max=500 # max distance to change navigation task or to go to a charging station

    Priority={j:1 for j in Non_Navigation_Tasks} #(0,1)
    #Priority=np.random.randint(1,10,size=W)/10
    #Priority=[2.999999999999999889e-01, 9.000000000000000222e-01, 5.999999999999999778e-01, 4.000000000000000222e-01, 2.999999999999999889e-01]
    # Priority = {0: 0.9, 1: 0.8, 2: 0.7, 3: 0.8, 4: 1, 5:0.6, 6:0.8, 7:0.9}

    
    Y = {(k, j): 1 for k in Times for j in Non_Navigation_Tasks}
    # Y={(k,j):np.random.randint(0,2) for k in Times for j in Non_Navigation_Tasks}

    
    # _______________________Gamma Matrix Calculation
    Gamma_Matrix = {(h, j): 1 for h in Navigation_Tasks for j in Non_Navigation_Tasks}


    for j in Non_Navigation_Tasks:  # Assigning at least one Navigation task to a non navigation task
        if sum(Gamma_Matrix[h, j] <= 0 for h in Navigation_Tasks):
            n = np.random.randint(0, W_N)
            Gamma_Matrix[n, j] = 1    
    # Computing and Sensing Coefficients and Parameters
    Locomotion_Power=21 # in W
    Sensing_Power={}
    Sensing_Power[0]=(1.3+2.2) # camera power in W
    Sensing_Power[1]=(1.9+0.9) # Lidar power in W
    Sensing_Power = {0: 3.5, 1: 2.8}

    
    # Parameters for Robot navigation and distance from stations
    Robot_Speed=1*3600 # Average robot speed in meter/hrs
    Max_distance={h:200 for h in Navigation_Tasks} # max distance between navigation paths and fartest charging station (meters)
    
    E_changeMax=(Locomotion_Power+Sensing_Power[0]+Sensing_Power[1]+2.5+0.8)*Dist_change_max/Robot_Speed # max energy spent due to changing nav task or to go to recharge
    
    change = {0: {0: -0.07, 1: -0.17, 2: -0.27, 3: 0.18, 4: 0.71, 5: -0.12, 6: 0.53, 7: -0.6, 8: 0.46, 9: -0.18, 10: 0.46, 11: -0.92, 12: 0.81, 13: -0.08, 14: -0.66, 15: -0.7, 16: -0.64, 17: -0.37, 18: 0.61, 19: -0.27, 20: -0.91, 21: -0.33, 22: 0.36, 23: -0.19, 24: 0.79, 25: -0.26, 26: -0.87, 27: 0.49, 28: 0.68, 29: -0.54}, 1: {0: -0.91, 1: -0.31, 2: -0.64, 3: 0.33, 4: -0.03, 5: 0.9, 6: 0.18, 7: -0.34, 8: 0.62, 9: 0.02, 10: -0.09, 11: 0.78, 12: -0.44, 13: 0.5, 14: 0.87, 15: -0.15, 16: 0.12, 17: 0.96, 18: 0.25, 19: 0.31, 20: -0.05, 21: -0.34, 22: -0.44, 23: -0.57, 24: -0.09, 25: -0.29, 26: -0.22, 27: 0.69, 28: -0.99, 29: -0.55}}
    
    Alg_Parameters = {'Period_duration': Period_duration, 'Working_Period': Working_Period, 'T': T, 'R': R, 'C': C, 'S': S, 'W': W, 'W_N': W_N, 
                  'div': div, 'bis_option': bis_option, 'Ebat':Ebat, 'Edod':Edod,  'Charging_time': Charging_time, 'E_Balance_Zero': E_Balance_Zero,
                  'Dist_change_max':Dist_change_max, 'Priority':Priority, 'Y':Y, 'Gamma_Matrix':Gamma_Matrix, 'Locomotion_Power':Locomotion_Power,
                  'Sensing_Power':Sensing_Power, 'Robot_Speed':Robot_Speed, 'Max_distance':Max_distance, 'E_changeMax':E_changeMax , 'Emax':Emax, 'Exp_no':1,  'change':change}
    return Alg_Parameters

def TCM_Initial_Conditions(Exp_no):    # parameters collected from .csv file


    # Exp_no = Setting_df.iloc[-1,0]
    
    Period_duration = Setting_df.loc[Exp_no,'Period_duration']
    Working_Period = Setting_df.loc[Exp_no,'Working_Period']
    T = math.ceil(Working_Period / Period_duration)  # Number of periods
    R = Setting_df.loc[Exp_no,"No_of_robots"]
    C = Setting_df.loc[Exp_no,"No_of_chargers"]
    S = Setting_df.loc[Exp_no,"No_of_sensors"]
    W = Setting_df.loc[Exp_no,"No_of_non_nav_tasks"]
    W_N = Setting_df.loc[Exp_no,"No_of_nav_task"]
    div = Setting_df.loc[Exp_no,"Period_divisions"]
    bis_option = Setting_df.loc[Exp_no,"bis_option"]
    
    Charging_time = Setting_df.loc[Exp_no,"Charging_time"]     

    # Battery Energy Levels
    Ebat = Setting_df.loc[Exp_no,'Ebat']  # Battery capacity (Wh)
    Edod = Setting_df.loc[Exp_no,'Edod']  # 0.2 * Ebat   # Depth of Discharge
    Emax = Setting_df.loc[Exp_no,'Emax'] # 1 * Ebat  # Preferred max charge level

    Locomotion_Power = Setting_df.loc[Exp_no,"Locomotion_Power"]

    Robot_Speed = Setting_df.loc[Exp_no,"Robot_Speed"]


    # Max_distance_nav = (Setting_df.loc[Exp_no,'Max_distance']) # max distance between navigation paths and fartest charging station (meters)
    # Max_distance = ast.literal_eval(Max_distance_nav) 
    Max_distance={h:200 for h in range(0, int(W))}
    
    Dist_change_max = Setting_df.loc[Exp_no,"Dist_change_max"] 
    
    Y_string = Setting_df.loc[Exp_no,"Y"]
    Y = ast.literal_eval(Y_string) 
    
    gamma_string = Setting_df.loc[Exp_no,"Gamma_Matrix"]
    Gamma_Matrix = ast.literal_eval(gamma_string) 
    # Gamma_Matrix = {(0, 0): 1, (0, 1): 1, (0, 2): 1, (0, 3): 1, (0, 4): 1, (1, 0): 1, (1, 1): 1, (1, 2): 1, (1, 3): 0, (1, 4): 0}

    
    initial_charge_string = Setting_df.loc[Exp_no,"E_Balance_Zero"]
    E_Balance_Zero = ast.literal_eval(initial_charge_string)    
    
    E_changeMax = Setting_df.loc[Exp_no,"E_changeMax"] 
    
    Priority_string = Setting_df.loc[Exp_no,"Priority"]
    Priority = ast.literal_eval(Priority_string) 

    # Locomotion_Power = (Setting_df.loc[Exp_no,'Locomotion_Power'])  # in W
    sensing_power_string = Setting_df.loc[Exp_no,"Sensing_Power"]
    Sensing_Power = ast.literal_eval(sensing_power_string)

    # Change = Setting_df.loc[Exp_no,"Error"]
    # change = ast.literal_eval(Change)
    change = {0: {0: -0.07, 1: -0.17, 2: -0.27, 3: 0.18, 4: 0.71, 5: -0.12, 6: 0.53, 7: -0.6, 8: 0.46, 9: -0.18, 10: 0.46, 11: -0.92, 12: 0.81, 13: -0.08, 14: -0.66, 15: -0.7, 16: -0.64, 17: -0.37, 18: 0.61, 19: -0.27, 20: -0.91, 21: -0.33, 22: 0.36, 23: -0.19, 24: 0.79, 25: -0.26, 26: -0.87, 27: 0.49, 28: 0.68, 29: -0.54}, 1: {0: -0.91, 1: -0.31, 2: -0.64, 3: 0.33, 4: -0.03, 5: 0.9, 6: 0.18, 7: -0.34, 8: 0.62, 9: 0.02, 10: -0.09, 11: 0.78, 12: -0.44, 13: 0.5, 14: 0.87, 15: -0.15, 16: 0.12, 17: 0.96, 18: 0.25, 19: 0.31, 20: -0.05, 21: -0.34, 22: -0.44, 23: -0.57, 24: -0.09, 25: -0.29, 26: -0.22, 27: 0.69, 28: -0.99, 29: -0.55}}

    TCM_Parameters = {'Period_duration': Period_duration, 'Working_Period': Working_Period, 'T': T, 'R': R, 'C': C, 'S': S, 'W': W, 'W_N': W_N, 
                  'div': div, 'bis_option': bis_option, 'Ebat':Ebat, 'Edod':Edod, 'Emax':Emax, 'Charging_time': Charging_time, 'E_Balance_Zero': E_Balance_Zero,
                  'Dist_change_max':Dist_change_max, 'Priority':Priority, 'Y':Y, 'Gamma_Matrix':Gamma_Matrix, 'Locomotion_Power':Locomotion_Power,
                  'Sensing_Power':Sensing_Power, 'Robot_Speed':Robot_Speed, 'Max_distance':Max_distance, 'E_changeMax':E_changeMax, 'Exp_no':Exp_no , 'change':change}
    

    
    return TCM_Parameters 



# class TCM_Algorithm:

    



if File_Execution == False:
    Parameters = TCM_Algorithm_Initial_Conditions()
else:
    Setting_df=pd.read_csv(File_name)
    for Exp_no in range(0, len(Setting_df) ): # len(Setting_df)
        if Setting_df.loc[Exp_no,"Alg_execution"] != 1 :  
            Parameters = TCM_Initial_Conditions(Exp_no)
            break
    # raise Exception('exit')
            
    
    

Period_duration = itemgetter('Period_duration')(Parameters)
Working_period = itemgetter('Working_Period')(Parameters)
T = math.ceil(Working_period/Period_duration)
R = int(itemgetter('R')(Parameters))
C = int(itemgetter('C')(Parameters))
S = int(itemgetter('S')(Parameters))
W = int(itemgetter('W')(Parameters))
W_N = int(itemgetter('W_N')(Parameters))
div = int(itemgetter('div')(Parameters))
bis_option = int(itemgetter('bis_option')(Parameters))
Ebat = itemgetter('Ebat')(Parameters)
Edod = itemgetter('Edod')(Parameters)
SetEmax = itemgetter('Emax')(Parameters)
Charging_time = itemgetter('Charging_time')(Parameters)
E_Balance_Zero = itemgetter('E_Balance_Zero')(Parameters)
Priority = itemgetter('Priority')(Parameters)
Y = itemgetter('Y')(Parameters)
Gamma_Matrix = itemgetter('Gamma_Matrix')(Parameters)
Locomotion_Power = itemgetter('Locomotion_Power')(Parameters)
Sensing_Power = itemgetter('Sensing_Power')(Parameters)
Robot_Speed = itemgetter('Robot_Speed')(Parameters)
Max_distance = itemgetter('Max_distance')(Parameters)
E_changeMax = itemgetter('E_changeMax')(Parameters)
change = (itemgetter('change')(Parameters))
Q_Battery_Weight=T*W*W_N/R  # Importance of Battery lifetime on cost function
batDegWeight = Q_Battery_Weight * q


minObjTaskPriority = min(Priority.values())
Emax = min((Ebat * minObjTaskPriority/batDegWeight) + SetEmax, Ebat)
setEmin = min((Ebat * minObjTaskPriority/batDegWeight) - Edod, 0)



# create sets
Times = range(0, T)     # Set of periods
Ex_Times =  range(-1,T) # Set of extended periods which includes -1
Robots = range(0, R)    # Set of robots
Charging_stations = range(0, C) # Set of charging stations
Sensors = range(0, S)   # Set of sensors
Non_Navigation_Tasks = range(0, W)  # Set of non-navigation tasks, e.g., face recognition
Navigation_Tasks=range(0,W_N) # Set of navigation paths
Division = range(0,div) # Set of Divisions of a single period wile charging 

E_end_min=Edod # desired min energy at end of working period.
Charge_State_Zero={i:0 for i in Robots}       # Initial charge state, i.e., charging(1)/not_charging(0). 
Charging_rate=Ebat/Charging_time*Period_duration #Wh recharged during an entire period in charging mode
Divided_charging_rate = Charging_rate/div


# Task-related Parameters
M_Nav={h:1*10**-1 for h in Navigation_Tasks}
    #M_Nav=np.random.uniform(low=0.1*10**-1, high=3*10**-1, size=W_N)
    #M_Nav=[3.499262193048623126e-02,2.233270584866454966e-01]

M_Task={j:3*10**-1 for j in Non_Navigation_Tasks}
    #M_Task=np.random.uniform(low=0.3*10**-1, high=9*10**-1, size=W)
    #M_Task=[5.834735384327416341e-01,6.063307144569393126e-01,7.921409694627232212e-02,3.743802826951356799e-01,9.024889641913197424e-02]


Alpha_Loc={h:Locomotion_Power*Period_duration for h in Navigation_Tasks} # Locomotion Coefficient
# Alpha_Loc={0 : Locomotion_Power*Period_duration , 1 : 0.7 * Locomotion_Power * Period_duration} # Locomotion Coefficient
Alpha_Comp={i:2.5/0.279166818*Period_duration for i in Robots} # Computing Coefficient

Alpha_Sensing={}
Alpha_Sensing[0]= Sensing_Power[0]*Period_duration # Camera coefficient (Wh)
Alpha_Sensing[1]= Sensing_Power[1]*Period_duration  # Lidar coefficient (Wh)

Avg_Access_Time={l:0.01 for l in Sensors}  # Access time for Sensors in seconds

Task_Inference_Time={j:M_Task[j]*0.539/(0.279166818) for j in Non_Navigation_Tasks} # Inference Time for non-navigation tasks (sec)
Nav_Inference_Time={h:M_Nav[h]*0.539/(0.279166818) for h in Navigation_Tasks} # Inference Time for non-navigation tasks (sec)

Tasks_Sensing_Rate={(j,l):1/Task_Inference_Time[j] for j in Non_Navigation_Tasks for l in Sensors} # samples/sec
Nav_Sensing_Rate={(h,l):1/Nav_Inference_Time[h] for h in Navigation_Tasks for l in Sensors} # samples/sec

E_NavMax= {h:Locomotion_Power*Max_distance[h]/Robot_Speed for h in Navigation_Tasks} # max energy necessary to navigate the robot back to a charging station (Wh)

M_Max={i:20*10**-1 for i in Robots}

# _______________________________Setting Initial variable and Conditions
Min_Charge = Edod #if q > 0 else 0
Waiting = {i: 0 for i in Robots}
Charging_wait = np.zeros((T,R))

Availability = {(i, k): 1 for i in Robots for k in Ex_Times}
R_P = {k: {i: {'Charge_Level': E_Balance_Zero[i],  'Status': 0, 'Charger': -1,'Charged': 0, 'E_Nav': 0, 'E_Non_Nav': 0, 'E_Change_max': 0, 'E_Other': 0, 'aux_1': 0, 'aux_2': 0, 'aux_3': 0} for i in Robots} for k in Ex_Times}
R_Slack = {i:{'Slack': ( sum(Availability[i, k] for k in Times) / R_P[T - 1][i]['Charge_Level'] ) + sum(R_P[k][i]['Status'] for k in Times), 'Waiting':  Waiting[i]  } for i in Robots}  

B = {(i, k): 0 for k in Ex_Times for i in Robots}
Task_performed = {i: 0 for i in Robots}
Charge_time = math.ceil((Emax - Min_Charge) / Charging_rate)

j_p = max(Priority.keys(), key=(lambda x: Priority[x]))
j_sort = sorted(Priority.keys(), key=lambda x: Priority[x], reverse=True)  # sorted(Charge_Ava_R.keys(), key =  lambda x:(Charge_Ava_R[x]))

a = {(k, i, c): 0 for c in Charging_stations for i in Robots for k in Ex_Times}
b = {(k, i, c): 0 for c in Charging_stations for i in Robots for k in Ex_Times}
z = {(k, i, c): 0 for c in Charging_stations for i in Robots for k in Ex_Times}
x = {(k, i, h, j): 0 for k in Times for i in Robots for h in Navigation_Tasks for j in Non_Navigation_Tasks}
E = {(i, h): 0 for i in Robots for h in Navigation_Tasks}
e = {(k, i, h): 0 for k in Times for i in Robots for h in Navigation_Tasks}
e_res_Task = {(k, i, h, j): 0 for k in Times for i in Robots for h in Navigation_Tasks for j in Non_Navigation_Tasks}
e_res_Nav = {(k, i, h): 0 for k in Times for i in Robots for h in Navigation_Tasks}
e_other = {(k, i, h): 0 for k in Times for i in Robots for h in Navigation_Tasks}
Robot_Navigation_state = {(k, i, h): 0 for k in Ex_Times for i in Robots for h in Navigation_Tasks}
E1 = {i: {h: 0 for h in Navigation_Tasks} for i in Robots}
e = {(-1, i, h): 0 for i in Robots for h in Navigation_Tasks}
H = {h: 0 for h in Navigation_Tasks}
e_highest_priority_task = {h: 0 for h in Navigation_Tasks}
Availability_of_Robot = {i: sum(Availability[i, k] for k in Times) for i in Robots}

Available_Charge = {i: 0 for i in Robots}
No_of_periods_Available = {i: 0 for i in Robots}
Energy_highest_priority_task = {i: 0 for i in Robots}
Energy_for_Non_Nav_Task = {i: 0 for i in Robots}
No_of_Non_Nav_Task = {i: 0 for i in Robots}
O = {(k,i) : 0 for k in Times for i in Robots}
Temp_O = {(k,i) : 0 for k in Times for i in Robots}
R_A = {k: {i: 0 for i in Robots} for k in Times}
charger_status = {(k, i, c): 0 for c in Charging_stations for i in Robots for k in Times}
Charging_Queue = {i : T-1 for i in Robots}
Valley = {i : [] for i in Robots}
Start_time = time.time()


Temp_RP = {k: {i: {'Charge_Level': E_Balance_Zero[i], 'Status': 1, 'Charger': -1,'Charged': 0, 'E_Nav': 0, 'E_Non_Nav': 0, 'E_Change_max': 0, 'E_Other': 0, 'aux_1': 0, 'aux_2': 0, 'aux_3': 0} for i in Robots} for k in Ex_Times}
Temp_z = {(k, i, c): 0 for c in Charging_stations for i in Robots for k in Ex_Times}
Temp_x = {(k, i, h, j): 0 for k in Times for i in Robots for h in Navigation_Tasks for j in Non_Navigation_Tasks}

Temp_NS = {(k, i, h): 0 for k in Ex_Times for i in Robots for h in Navigation_Tasks}
Temp_availability = {(i, k): 1 for i in Robots for k in Ex_Times}



# ______________________-------------------------Functions




#---------   
def Objectives():
    obj1 = 0
    obj2 = 0
    for k in Times:
        for j in Non_Navigation_Tasks:  # Calculating obj 1 i.e Task downtime penalty
            for h in Navigation_Tasks:
                obj1 = obj1 + Priority[j] * ((Y[(k, j)] * Gamma_Matrix[h, j]) - sum(x[k, i, h, j] for i in Robots))
        for i in Robots:  # Calculating obj 2 i.e sub-optimal charge penalty
            for c in Charging_stations:
                a[k, i, c] = (1 - z[k - 1, i, c]) * z[k, i, c]
                b[k, i, c] = z[k - 1, i, c] * (1 - z[k, i, c])
                obj2 = obj2 + a[k, i, c] * R_P[k][i]['aux_1'] + b[k, i, c] * R_P[k][i]['aux_2']
    Total_Obj = obj1 + obj2 * q * Q_Battery_Weight
    W_obj2 = obj2 * q *  Q_Battery_Weight
    return Total_Obj, obj1, obj2, W_obj2

def Obj1_h_selection(K):
    obj1 = {h: 0 for h in Navigation_Tasks}
    for k in range(K,T):
        for h in Navigation_Tasks:
            for j in Non_Navigation_Tasks:  # Calculating obj 1 i.e Task downtime penalty
                for i in Robots:
                    obj1[h] = obj1[h] + Priority[j] * ((Y[(k, j)] * Gamma_Matrix[h, j]) - x[k, i, h, j] )#  sum( sum( Priority[j] * ((Y[(k, j)] * Gamma_Matrix[h, j]) - sum(x[k, i, h, j] for i in Robots)) for j in Non_Navigation_Tasks) for k in range(K,T))
    return obj1

def Temp_Objectives():
    obj1 = 0
    obj2 = 0
    for k in Times:
        for j in Non_Navigation_Tasks:  # Calculating obj 1 i.e Task downtime penalty
            for h in Navigation_Tasks:
                obj1 = obj1 + Priority[j] * ((Y[(k, j)] * Gamma_Matrix[h, j]) - sum(Temp_x[k, i, h, j] for i in Robots))
        for i in Robots:  # Calculating obj 2 i.e sub-optimal charge penalty
            for c in Charging_stations:
                a[k, i, c] = (1 - z[k - 1, i, c]) * z[k, i, c]
                b[k, i, c] = z[k - 1, i, c] * (1 - z[k, i, c])
                obj2 = obj2 + a[k, i, c] * Temp_RP[k][i]['aux_1'] + b[k, i, c] * Temp_RP[k][i]['aux_2']
    Total_Obj = obj1 + obj2 * q * Q_Battery_Weight
    return Total_Obj

# _______________________________Calculating Energy required
for h in Navigation_Tasks:
    for i in Robots:
        for k in Times:
            for j in Non_Navigation_Tasks:
                e_res_Task[k, i, h, j] = Alpha_Comp[i] * (((Y[k, j] * Gamma_Matrix[h, j])) * M_Task[j]) + sum(Alpha_Sensing[l] * ((Y[k, j] * Gamma_Matrix[h, j]) - sum(x[k, g, h, j] for g in Robots)) * Tasks_Sensing_Rate[(j, l)] * Avg_Access_Time[l] for l in Sensors)  # Constraint 10_1
            e_res_Nav[k, i, h] = Alpha_Comp[i] * M_Nav[h] + sum(Alpha_Sensing[l] * Nav_Sensing_Rate[(h, l)] * Avg_Access_Time[l]for l in Sensors)  # Constraint 10_1
            e_other[k, i, h] = Alpha_Loc[h]
            e[k, i, h] = e_res_Nav[k, i, h] + sum(e_res_Task[k, i, h, j] for j in Non_Navigation_Tasks) + e_other[k, i, h]
            e_highest_priority_task[h] = e_res_Nav[k, i, h] + e_res_Task[k, i, h, j_p] + e_other[k, i, h]  # e_highest_priority_task


# ______________________-------------------------Error change

ObjJallocation = {j: 1 for j in Non_Navigation_Tasks}

def NewAllocation(k, i, h, temp):  # gives obj when a task is assigned (was New_Objective)
    ObjJallocation = {j: 1 for j in Non_Navigation_Tasks}
    NoallocationChargelevel = Temp_RP[k][i]['Charge_Level']  if temp else R_P[k][i]['Charge_Level']
    allocationChargeLevel = NoallocationChargelevel - e[k,i,h] - (E_changeMax * (1 - Robot_Navigation_state[k - 1, i, h])) 
    allocationObj2  = (( Edod - allocationChargeLevel) / Ebat) * q * Q_Battery_Weight 
    if allocationObj2  < min(Priority.values()) and allocationChargeLevel > 0:
        result = True
    else:
        j = W - 1
        result = False
        NoallocationChargelevel = allocationChargeLevel
        while j >= 0 and result == False:
            NoallocationChargelevel = allocationChargeLevel + e_res_Task[k, i, h, j_sort[j]]
            allocationObj2  = (abs(allocationChargeLevel - Edod) / Ebat) * q * Q_Battery_Weight 
            result = True if allocationObj2  < min(Priority.values()) and allocationChargeLevel > 0 else False
            ObjJallocation[j_sort[j]] = 1 if allocationObj2  < min(Priority.values()) and allocationChargeLevel > 0 else 0
            allocationChargeLevel =  allocationChargeLevel  + e_res_Task[k, i, h, j_sort[j]]
            j = j - 1
    return result, ObjJallocation



    

def Charging(temp, k, R):
    if temp == False:
        for t in range(k,T):
            if sum(Robot_Navigation_state[t, R, h] for h in Navigation_Tasks) != 1:
                Charging_Queue[R] = t
                break
    else:
        if sum(Temp_NS[k, R, h] for h in Navigation_Tasks) != 1:
            for t in range(k,T):
                Temp_RP[t][R]['Status'] = -1
                Temp_availability[R, t] = 0
        

def Energy_Audit(k,i):
    E_Nav = Alpha_Comp[i] * sum(  Robot_Navigation_state[k, i, h] * M_Nav[h] for h in Navigation_Tasks) + sum( Alpha_Sensing[l] * Robot_Navigation_state[k, i, h] * Nav_Sensing_Rate[(h, l)] * Avg_Access_Time[l] for l in Sensors for h in Navigation_Tasks)
    E_Non_Nav = Alpha_Comp[i] * sum( x[k, i, h, j] * M_Task[j] for h in Navigation_Tasks for j in Non_Navigation_Tasks) + sum( Alpha_Sensing[l] * x[k, i, h, j] * Tasks_Sensing_Rate[(j, l)] * Avg_Access_Time[l] for l in Sensors for h in Navigation_Tasks for j in Non_Navigation_Tasks)
    Charged = (Emax - R_P[k - 1][i]['Charge_Level']) if  sum( z[k, i, c]  for c in Charging_stations) * (Charging_rate + R_P[k - 1][i]['Charge_Level'] ) >= Emax else sum(z[k, i, c] for c in Charging_stations) * Charging_rate
    CL = R_P[k - 1][i]['Charge_Level'] - E_Nav - E_Non_Nav  
    aux_1 = (abs(CL - (Edod)) / Ebat)
    aux_2 = abs((SetEmax - CL) / Ebat)
    E_Other = sum(Alpha_Loc[h] * Robot_Navigation_state[k, i, h] for h in Navigation_Tasks) 
    E_Change_max =  E_changeMax * O[k,i]  # R_P[k][i]['aux_3']
    Charge_Level = CL + Charged - E_Other - E_Change_max
    return E_Nav, E_Non_Nav, Charged, aux_1, aux_2, E_Other, E_Change_max, Charge_Level
    

def Task_DT(Charge_Level, K, i, h):
    Tasks_Allowed = 0 
    Charge_Level= Charge_Level - E_changeMax
    SoC_Min = min(R_P[k][i]['Charge_Level'] for k in Times)
    for k in range(K, T): 
        allocated = 0
        for j in Non_Navigation_Tasks:
            if sum(Y[k, j_sort[j]] * Gamma_Matrix[h, j_sort[j]] for h in Navigation_Tasks) > 0 and Charge_Level > SoC_Min :     
                Tasks_Allowed = Tasks_Allowed + Priority[j_sort[j]]         
                Charge_Level =  Charge_Level - e_res_Task[k, i, h, j]
                allocated = 1
        Charge_Level = Charge_Level - (e_res_Nav[k, i, h] + e_other[k, i, h]) * allocated
    return Tasks_Allowed


def ReCharge(k, i):
    NavigationDT = { h: 0 for h in Navigation_Tasks}
    for h in Navigation_Tasks:
        NavigationDT[h] = sum( Priority[j] * ((Y[(k, j)] * Gamma_Matrix[(h, j)]) - sum( x[k, i, h, j] for i in Robots)) for j in Non_Navigation_Tasks)
    a = (1 - sum(z[k-1,i,c] for c in Charging_stations)) * 1 # As sum(z[k,i,c] for c in Charging_stations) will be 1 for charging
    b = sum(z[k-1,i,c] for c in Charging_stations) * (1 - 0) # As sum(z[k,i,c] for c in Charging_stations) will be 0 for discontinuing recharge
    reCharge = min( Charging_rate, Emax - R_P[k][i]['Charge_Level'] ) 
    valleyCharge = abs(R_P[k][i]['Charge_Level'] - Edod)/Ebat
    maxChargeNC = abs(Emax -R_P[k][i]['Charge_Level'])/Ebat
    maxChargeC = abs(Emax - (R_P[k][i]['Charge_Level'] + reCharge) )/Ebat
    bots = sum(Temp_availability[i,k] + Availability[i, k] for i in Robots)
    Navs = sum(min(1, NavigationDT[h]) for h in Navigation_Tasks)
    allocations = max(NavigationDT.values()) * sum(z[k-1,i,c] for c in Charging_stations) if bots < Navs else 0
    chargingObj = (0 * allocations) + ((a * valleyCharge) + (b * maxChargeC)) * q *Q_Battery_Weight     
    noChargingObj = ((a * valleyCharge) + (b * maxChargeNC)) * q *Q_Battery_Weight  -allocations 
    result = True if chargingObj <= noChargingObj and reCharge > 0 else False
    return result


def Charge_Scheduling(P):
    RobotRecharged = {i: 0 for i in Robots}
    for i in Robots:
        if R_P[T - 1][i]['Charge_Level'] < 0.01:
            R_P[T - 1][i]['Charge_Level'] = 0.01
    R_Slack = {i:{'Slack': ( sum(Availability[i, k] for k in Times) / R_P[T - 1][i]['Charge_Level'] ) + sum(R_P[k][i]['Status'] for k in Times), 'Waiting':  Waiting[i]  } for i in Robots} # C - sum(Charging_wait[Charging_Queue[i], r] for r in Robots)  
    R_select = sorted(R_Slack.keys(), key=lambda i:(R_Slack[i]['Slack'] ))
    for i in Robots:
        robot = R_select[i]
        for c in Charging_stations:        
            for t in range(P, T):                    
                if  R_P[t][robot]['Status'] < 0 and sum(Robot_Navigation_state[t, robot, h] for h in Navigation_Tasks) < 1 :# and sum(z[t, r, c] for r in Robots) < 1 and z[t-1, robot, c]  - sum(z[t-1, robot, ch]  for ch in Charging_stations) >= 0:
                    if sum(z[t, r, c] for r in Robots) < 1 and z[t-1, robot, c]  - sum(z[t-1, robot, ch]  for ch in Charging_stations) >= 0:
                        if ReCharge(t, robot) and sum(z[t, robot, ch] for ch in Charging_stations) < 1 : #, H[i%W_N]
                            z[t, robot, c] = 1
                            R_P[t][robot]['Charger'] = c 
                            O[t, robot] = (1 - sum(z[t - 1, robot, c] for c in Charging_stations)) * sum(z[t, robot, c] for c in Charging_stations)
                            Charging_wait[t, robot] = 1
                            Audit = Energy_Audit(t,robot) #E_Nav, E_Non_Nav, Charged, aux_1, aux_2, E_Other, E_Change_max, Charge_Level                                 
                            R_P[t][robot]['Charged'] = (Emax - R_P[t - 1][robot]['Charge_Level'])  if ( sum( z[t, robot, c]  for c in Charging_stations) * Charging_rate) + R_P[t - 1][robot]['Charge_Level']  >= Emax else sum(z[t, robot, c] for c in Charging_stations) * Charging_rate
                            R_P[t][robot]['aux_1'] = Audit[3]
                            R_P[t][robot]['aux_2'] = Audit[4]
                            R_P[t][robot]['Charge_Level'] = R_P[t-1][robot]['Charge_Level']  + R_P[t ][robot]['Charged'] #-  R_P[t][robot]['E_Change_max']
                            for k in range(t, T):
                                R_P[k][robot]['Charge_Level'] = R_P[t][robot]['Charge_Level']
                            if t == T-1 :
                                endScheduling[robot] = 1     
                                RobotRecharged[robot] = 1 
                                for k in range(t, T):
                                    Availability[robot, k] = 1
                                for k in Times:
                                    R_P[k][robot]['Status'] = 0                                
                        else:
                            endScheduling[robot] = 1 if RR > 0 else 0
                            RobotRecharged[robot] = 1 
                            for k in range(t, T):
                                Availability[robot, k] = 1
                            for k in Times:
                                R_P[k][robot]['Status'] = 0
                            break
                    else:
                        if not ReCharge(t, robot):
                            endScheduling[robot] = 1 if RR > 0 else 0
                            RobotRecharged[robot] = 1
                            for k in range(t, T):
                                Availability[robot, k] = 1
                            for k in Times:
                                R_P[k][robot]['Status'] = 0
                            break
                        if sum(z[t, r, ch]  for ch in Charging_stations for r in Robots) < C :
                            break   
                        else:
                            if t == T-1 :
                                endScheduling[robot] = 1                        
            if RobotRecharged[robot] == 1:
                break
        for k in Times:
            R_P[k][robot]['Status'] = 0
# _______________________________Creating Class for allocating tasks
endScheduling = {i:0 for i in Robots}
def Task_allocation(Robot, Navigation_Task, period):
    h = Navigation_Task
    i = Robot
    K = period
    temp = False
    for k in range(K, T): 
        if R_P[k][i]['Status'] == 0 and Availability[i, k] == 1:  ###            
            TaskAllocation = NewAllocation(k, i, h, temp)
            allocation = TaskAllocation[1]
            if TaskAllocation[0]:
                for j in Non_Navigation_Tasks:
                    if (Y[k, j_sort[j]] * Gamma_Matrix[h, j_sort[j]]) - sum( x[k, m, h, j_sort[j]] for m in Robots) > 0:
                        x[k, i, h, j_sort[j]] =  allocation[j]
                        Robot_Navigation_state[k, i, h] = 1
                        Availability[i, k] = 0
            else:
                Charging(temp, k, i)
                for t in range(k, T):
                    R_P[t][i]['Status'] = -1 
                    Availability[i, t] = 0
                    endScheduling[i] = 1 if RR > 0 else 0
                break
            O[k,i] = R_P[k][i]['aux_3'] = sum((Robot_Navigation_state[k - 1, i, h] * (1 - Robot_Navigation_state[k, i, h]) + ( (1 - Robot_Navigation_state[k - 1, i, h]) * Robot_Navigation_state[k, i, h])) for h in Navigation_Tasks) if  R_P[k][i]['Status'] == 0 else 0
            Audit = Energy_Audit(k,i) 
            R_P[k][i]['E_Nav'] = Audit[0]
            R_P[k][i]['E_Non_Nav'] = Audit[1]
            R_P[k][i]['aux_1'] = Audit[3]
            R_P[k][i]['aux_2'] = Audit[4]
            R_P[k][i]['E_Other'] = Audit[5]
            R_P[k][i]['E_Change_max'] =  Audit[6]
            R_P[k][i]['Charge_Level'] = Audit[7]                        
            for t in range(k, T):
                R_P[t][i]['Charge_Level'] = R_P[k][i]['Charge_Level']  
            if sum(Robot_Navigation_state[k, i, n] for n in Navigation_Tasks) > 0 or R_P[k][i]['Status'] == -1 :# or sum(z[k-1, i, c] for c in Charging_stations) > 0:
                for m in range(-1,k+1):
                    Availability[i, m] = 0     
        if k == T-1:
            endScheduling[i] = 1


##############################################################################

def Selector():
    for i in Robots:
        k = Charging_Queue[i]
        UnAvailability = 0
        while sum(z[k,i,c] for c in Charging_stations) < 1 and k > -1:
            UnAvailability = UnAvailability + 1 if sum(Availability[i,k] for i in Robots) < W_N - sum(min(1, sum(((Y[(k, j)] * Gamma_Matrix[h, j])  - sum(x[k, i, h, j] for i in Robots) ) for j in Non_Navigation_Tasks)) for h in Navigation_Tasks) else 0
            k = k - 1            
        Waiting[i] = R * T  if sum(Availability[i,k] for k in Times) < 1 else 0
        for t in range(Charging_Queue[i], min(T-1, Charging_Queue[i]+Charge_time)):
            Waiting[i] = Waiting[i] + (1 + R_P[t][i]['Status']) * -min(0, C - sum(-R_P[t][r]['Status'] * Charging_wait[t,r] for r in Robots) - Charging_wait[t,i])
        Waiting[i] = Waiting[i] if UnAvailability <= Waiting[i] else 0



def Temp_Task_allocation(h, P):
    temp = True
    for l in range(P,T):
        for i in Robots:
            Temp_availability[i,l] = 1 if Availability[i,l] > 0 else 0
            Temp_RP[l][i]['Status'] =  R_P[l][i]['Status']
            Temp_RP[l][i]['Charge_Level'] = R_P[l][i]['Charge_Level']
            Charging_wait[l, i] = (1 - Availability[i,l]) * Charging_wait[l, i]
            for c in Charging_stations:
                Temp_z[l,i,c] = 0
            for nav in Navigation_Tasks:
                Temp_NS[l,i,nav] = 0
                for j in Non_Navigation_Tasks:
                    Temp_x[l,i,nav,j] = 0 
                    
    for i in Robots:               
        for k in range(P, T): 
            if Temp_availability[i, k] > 0 and Availability[i, k] > 0:
                TaskAllocation = NewAllocation(k, i, h, temp)
                allocation = TaskAllocation[1]
                if TaskAllocation[0] :#and Temp_availability[i, k] == 1:
                    # print("Allocated ", j_sort[j])
                    for j in Non_Navigation_Tasks:
                        if (Y[k, j_sort[j]] * Gamma_Matrix[h, j_sort[j]]) - sum( x[k, m, h, j_sort[j]] for m in Robots) > 0:
                            Temp_x[k, i, h, j_sort[j]] =  allocation[j]
                            Temp_NS[k, i, h] = 1
                            Temp_availability[i, k] = 0
                else:
                    Charging(temp, k, i)
            Temp_O[k,i] = sum((Temp_NS[k - 1, i, n] * (1 - Temp_NS[k, i, n]) + ( (1 - Temp_NS[k - 1, i, n]) * Temp_NS[k, i, n])) for n in Navigation_Tasks)
            Temp_RP[k][i]['E_Nav'] = Alpha_Comp[i] * sum(  Temp_NS[k, i, n] * M_Nav[n] for n in Navigation_Tasks) + sum( Alpha_Sensing[l] * Temp_NS[k, i, n] * Nav_Sensing_Rate[(n, l)] * Avg_Access_Time[l] for l in Sensors for n in Navigation_Tasks)
            Temp_RP[k][i]['E_Non_Nav'] = Alpha_Comp[i] * sum( Temp_x[k, i, n, j] * M_Task[j] for n in Navigation_Tasks for j in Non_Navigation_Tasks) + sum( Alpha_Sensing[l] * Temp_x[k, i, n, j] * Tasks_Sensing_Rate[(j, l)] * Avg_Access_Time[l] for l in Sensors for n in Navigation_Tasks for j in Non_Navigation_Tasks)
            Temp_RP[k][i]['Charge_Level'] = Temp_RP[k - 1][i]['Charge_Level'] - Temp_RP[k][i]['E_Nav'] - Temp_RP[k][i]['E_Non_Nav']  
            Temp_RP[k][i]['aux_1'] = (abs(Temp_RP[k][i]['Charge_Level'] - (Edod)) / Ebat)
            Temp_RP[k][i]['aux_2'] = abs((SetEmax - Temp_RP[k][i]['Charge_Level']) / Ebat)
            Temp_RP[k][i]['E_Other'] = sum(Alpha_Loc[n] * Temp_NS[k, i, n] for n in Navigation_Tasks) 
            Temp_RP[k][i]['E_Change_max'] =  E_changeMax * Temp_O[k,i] 
            Temp_RP[k][i]['Charge_Level'] = Temp_RP[k][i]['Charge_Level']  - Temp_RP[k][i]['E_Other'] - Temp_RP[k][i]['E_Change_max']
            for t in range(k, T):
                Temp_RP[t][i]['Charge_Level'] = Temp_RP[k][i]['Charge_Level']
                Temp_availability[i, t] = 0 if Temp_RP[k][i]['Status'] == -1 or Availability[i, k] < 1 else 1
            if sum(Temp_NS[k, i, n] for n in Navigation_Tasks) > 0:
                for m in range(-1,k+1):
                    Temp_availability[i, m] = 0
            if Temp_RP[k][i]['Status'] == -1 and Temp_NS[k, i, h] != 1:
                Charging_Queue[i] = k
                for p in range(0, k):
                    Charging_wait[min(k+p, T-1), i] = 0
                for t in range(0, min(Charge_time, T-k)):
                    Charging_wait[k+t, i] = 1
                break


def PPlot(P):   
    state_of_charge_a = np.zeros((T + 1, R))
    for i in Robots:
        state_of_charge_a[0, i] = E_Balance_Zero[i] / Ebat * 100
        for k in Times:
            state_of_charge_a[k + 1, i] = R_P[k][i]['Charge_Level'] / Ebat * 100
    for i in Robots:
        plt.plot(range(0, T + 1), state_of_charge_a[:, i], label="Robot %s" % i)
    plt.axhline(y=SetEmax / Ebat * 100, color='r', linestyle='-', label="Emax")
    plt.axhline(y=Edod / Ebat * 100, color='r', linestyle='--', label="Edod")
    plt.axhline(y=0, color='blue', linestyle='--', label="Edod")
    plt.axhline(y=100, color='blue', linestyle='--', label="Edod")
    plt.ylabel('Beggning of period ', fontweight='bold')
    plt.xlabel(P, fontweight='bold')
    plt.xlim([0, T])
    for l in range(0, T, 2):
        plt.axvline(x=[l], color='grey', alpha=0.1)
    plt.legend(bbox_to_anchor=(0., -0.5, 1., -0.11), loc='lower left',
                ncol=2, mode="expand", borderaxespad=0.)
    plt.show()
    plt.clf() 

     
# ----------------------------------------------------------------------------Reccurance
def Reccurance(P):
    for i in Robots:
        for l in range(P,T):
            if sum(z[P-1,i,c] for c in Charging_stations) == 0   and R_P[P-1][i]['Status'] == 0  and R_P[P][i]['Status'] == 0 :
                R_P[l][i]['Status'] = 0 
                Availability[i,l] = 1
            else:
                R_P[l][i]['Status'] = -1
                Availability[i,l] = 0
                for g in range(P-1, 0, -1):
                    if sum(z[g,i,c] for c in Charging_stations) > 0:
                        R_P[g][i]['Status'] = -1
                    else:
                        break
            R_P[l][i]['aux_3'] = O[l,i] = 0
            R_P[l][i]['E_Nav'] = 0
            R_P[l][i]['E_Non_Nav'] = 0
            R_P[l][i]['Charged'] = 0
            R_P[l][i]['aux_1'] = 0
            R_P[l][i]['aux_2'] = 0
            R_P[l][i]['E_Change_max'] = 0
            R_P[l][i]['E_Other'] = 0
            R_P[l][i]['Charger'] = -1
            R_P[l][i]['Charge_Level'] = R_P[l-1][i]['Charge_Level'] #Charger
            for c in Charging_stations:
                z[l,i,c] = 0
                a[l,i,c] = 0
                b[l,i,c] = 0
            for h in Navigation_Tasks:
                Robot_Navigation_state[l,i,h] = 0
                for j in Non_Navigation_Tasks:
                    x[l,i,h,j] = 0
    stop= False
    reallocate = True
    Charge_Scheduling(P)
    for i in Robots:
        endScheduling[i] = 0
    period  = P
    obj1 = Obj1_h_selection(period)
    while stop == False:
        Availability_of_Robot = {i: sum(Availability[i, k] for k in Times) for i in Robots}
        period = T - max(Availability_of_Robot.values())
        obj1 = Obj1_h_selection(period)
        tempH = {h: sum(min(1, ((Y[(k, j)] * Gamma_Matrix[h, j]) - sum(x[k, i, h, j] for i in Robots)) ) for k in Times)  for h in Navigation_Tasks} #
        H = sorted(tempH.keys(), key = lambda i : (tempH[i]), reverse = True)        
        DT = DT_temp = obj1 #sum(obj1[h] for h in Navigation_Tasks)
        R_Slack = {i:{'Slack': ( sum(Availability[i, k] for k in range(P,T)) / R_P[T - 1][i]['Charge_Level'] ) + sum(R_P[k][i]['Status'] for k in Times), 'Waiting':  Waiting[i]  } for i in Robots} # C - sum(Charging_wait[Charging_Queue[i], r] for r in Robots)  
        if sum(obj1[l] for l in Navigation_Tasks) >= Priority[min(Priority, key = Priority.get)] and sum( max(R_Slack[i]['Slack'], 0) for i in Robots) > 0:# and R_Slack[S_R[0]]['Slack'] > 0:# 
            for h in Navigation_Tasks:
                Temp_Task_allocation(H[h], P)
                Selector()
                R_Slack = {i:{'Slack': ( sum(Availability[i, k] for k in range(P,T)) / R_P[T - 1][i]['Charge_Level'] ) + sum(R_P[k][i]['Status'] for k in Times), 'Waiting':  Waiting[i]  } for i in Robots} # C - sum(Charging_wait[Charging_Queue[i], r] for r in Robots)  
                S_R = sorted(R_Slack.keys(), key=lambda i:(R_Slack[i]['Waiting'], -R_Slack[i]['Slack'] ))#, reverse=True) # sum(C - min(1, sum(Charging_wait[Charging_Queue[i]+m, r] for r in Robots)) for m in range(0, Charge_time))
                if reallocate:
                    if sum(Robot_Navigation_state[P-1, i, H[h]] for i in Robots) > 0:
                        for i in Robots: 
                            if (Robot_Navigation_state[P-1, S_R[i], H[h]] ) > 0 and sum(z[P, S_R[i],c] for c in Charging_stations) < 1:
                                Task_allocation( S_R[i] , H[h] , P)
                                DT_temp = Obj1_h_selection(period) #sum(obj1[h] for h in Navigation_Tasks) #Obj_1(P)
                    if DT[H[h]] == DT_temp[H[h]]:
                        for i in Robots: 
                            if sum(Robot_Navigation_state[P-1, S_R[i], r_h] for r_h in Navigation_Tasks) < 1 and sum(z[P,S_R[i],c] for c in Charging_stations ) < 1:
                                Task_allocation( S_R[i] , H[h] , P)
                                DT_temp = Obj1_h_selection(period) #sum(obj1[h] for h in Navigation_Tasks) #Obj_1(P)
                            if DT[H[h]] != DT_temp[H[h]]:
                                break
                else:
                    for i in Robots: 
                        Task_allocation( S_R[i] , H[h] , P)
                        DT_temp = Obj1_h_selection(period) #sum(obj1[h] for h in Navigation_Tasks) #Obj_1(P)
                        if DT[H[h]] != DT_temp[H[h]]:
                            break  
            reallocate = False
        R_Slack = {i:{'Slack': ( sum(Availability[i, k] for k in range(P,T)) / R_P[T - 1][i]['Charge_Level'] ) + sum(R_P[k][i]['Status'] for k in Times), 'Waiting':  Waiting[i]  } for i in Robots} # C - sum(Charging_wait[Charging_Queue[i], r] for r in Robots)  
        if RR == 0:
            Charge_Scheduling(P)
        if sum(endScheduling[i] for i in Robots) == R:
            Charge_Scheduling(P)
            stop = True
if RR == 1:
    for k in (range(0,T)):
        Reccurance(k)          
        if k == 0:
            End_time = time.time()

else:
    Reccurance(0)   
    End_time = time.time()

Objective_Comp = Objectives()[0]
robot_echange_max = np.zeros((T , R))
aux2_np = np.zeros((T , R))
a_np = np.zeros((T , R))
b_np = np.zeros((T , R))
a_RP_rr = np.zeros((T , R))
a_RP_ee = np.zeros((T , R))
for k in Times:
    for i in Robots:  # Calculating obj 2 i.e sub-optimal charge penalty
        robot_echange_max[k,i] =  ((R_P[k][i]['E_Change_max'] ))
        aux2_np[k,i] = abs((SetEmax - R_P[k][i]['Charge_Level']) / Ebat)   * sum(b[k, i, c] for c in Charging_stations)
        a_np[k,i] =  sum(a[k, i, c] for c in Charging_stations)
        b_np[k,i] = sum(b[k, i, c] for c in Charging_stations)
        a_RP_rr[k,i] =  R_P[k-1][i]['Charge_Level'] * sum(a[k, i, c] + b[k, i, c] for c in Charging_stations) 
        a_RP_ee[k,i] = R_P[k][i]['Charge_Level']  * sum(a[k, i, c] + b[k, i, c] for c in Charging_stations)


def Print_Objectives():
    obj1 = 0
    obj2 = 0
        
    for k in Times:
        for i in Robots:  # Calculating obj 2 i.e sub-optimal charge penalty
            R_P[k][i]['aux_1'] = (abs(R_P[k-1][i]['Charge_Level'] - (Edod)) / Ebat)
            R_P[k][i]['aux_2'] = abs((SetEmax - R_P[k-1][i]['Charge_Level']) / Ebat)   
    for k in Times:
        for j in Non_Navigation_Tasks:  # Calculating obj 1 i.e Task downtime penalty
            for h in Navigation_Tasks:
                obj1 = obj1 + Priority[j] * ((Y[(k, j)] * Gamma_Matrix[h, j]) - sum(x[k, i, h, j] for i in Robots))
        for i in Robots:  # Calculating obj 2 i.e sub-optimal charge penalty
            for c in Charging_stations:
                a[k, i, c] = (1 - z[k - 1, i, c]) * z[k, i, c]
                b[k, i, c] = z[k - 1, i, c] * (1 - z[k, i, c])
                obj2 = obj2 + a[k, i, c] * R_P[k][i]['aux_1'] + b[k, i, c] * R_P[k][i]['aux_2']
    Total_Obj = obj1 + obj2 * q * Q_Battery_Weight
    return  Total_Obj, obj1, obj2 , (obj2 * q * Q_Battery_Weight)


##_______________________________Plots

Task_Downtime = np.zeros((T + 1, W_N))
for k in Times:
    for h in Navigation_Tasks:
        for j in Non_Navigation_Tasks:
            Task_Downtime[k + 1, h] = Task_Downtime[k + 1, h] + (
                        (Y[k, j] * Gamma_Matrix[h, j]) - sum(x[k, i, h, j] for i in Robots))

state_of_charge_a = np.zeros((T + 1, R))
for i in Robots:
    state_of_charge_a[0, i] = E_Balance_Zero[i] / Ebat * 100
    for k in Times:
        state_of_charge_a[k + 1, i] = R_P[k][i]['Charge_Level'] / Ebat * 100

###_______________________________


allocated_tasks = np.zeros((T + 1, R, W_N))
for i in Robots:
    for h in Navigation_Tasks:
        for k in Times:
            for j in Non_Navigation_Tasks:
                # print(m.getVarByName('x_(%s,%s,%s,%s)'%(k,0,0,j)))
                allocated_tasks[k + 1, i, h] = allocated_tasks[k + 1, i, h] + x[k, i, h, j]


for i in Robots:
    for h in Navigation_Tasks:
        plt.bar(range(0, T + 1), allocated_tasks[:, i, h], label="Navigation Task %s" % h)
    plt.ylabel('Number of Assigned Tasks to Robot %s ' % (i), fontweight='bold')
    plt.xlabel('Time Period', fontweight='bold')
    plt.xlim([-1, T + 1])
    plt.ylim(0, W + 3)
    plt.legend(loc="best")
    plt.show()
    plt.clf()
    
    
for h in Navigation_Tasks:
    plt.bar(range(0,T+1),Task_Downtime[:,h])
    plt.ylabel('# of Unallocated Tasks for Navigation %s'%(h),fontweight='bold')
    plt.xlabel('Time Period',fontweight='bold')
    plt.xlim([0,T+1])
    plt.show()
    plt.clf()

for i in Robots:
    plt.plot(range(0, T + 1), state_of_charge_a[:, i], label="Robot %s" % i)
plt.axhline(y=SetEmax / Ebat * 100, color='r', linestyle='-', label="Emax")
plt.axhline(y=Edod / Ebat * 100, color='r', linestyle='--', label="Edod")
# plt.axhline(y=0, color='blue', linestyle='--', label="Edod")
# plt.axhline(y=100, color='blue', linestyle='--', label="Edod")
plt.ylabel('State of Charge (%)', fontweight='bold')
plt.xlabel('State of Charge', fontweight='bold')
plt.xlim([0, T])
plt.ylim([-20, 110])  #
for l in range(0, T, 2):
    plt.axvline(x=[l], color='grey', alpha=0.1)
plt.legend(bbox_to_anchor=(0., -0.5, 1., -0.11), loc='lower left',
            ncol=2, mode="expand", borderaxespad=0.)
plt.show()
plt.clf()



Finall = Print_Objectives()
Alg_allocated_tasks= sum( x[k, i, h, j] for k in Times for i in Robots  for h in Navigation_Tasks for j in Non_Navigation_Tasks)
Alg_Total_Downtime = (W * W_N * T) - Alg_allocated_tasks
Alg_total_obj_cost = Finall[0]
Alg_obj1 = Finall[1]
Alg_obj2 = Finall[2]
Alg_run_time = End_time - Start_time



state_of_charge=np.zeros((T+1, R))
state_of_charge=np.zeros((T+1, R))
energy_discharged=np.zeros(R)
for i in Robots:
    state_of_charge[0,i]=E_Balance_Zero[i]/Ebat
    for k in Times:
            #print(m.getVarByName('x_(%s,%s,%s,%s)'%(k,0,0,j)))
           state_of_charge[k+1,i] = R_P[k][i]['Charge_Level'] /Ebat
           if  state_of_charge[k+1,i]<=state_of_charge[k,i]:
               energy_discharged[i]=energy_discharged[i]+(state_of_charge[k,i]-state_of_charge[k+1,i])*Ebat/100
               


utilization = sum( R_P[k][i]['E_Nav'] + R_P[k][i]['E_Non_Nav'] + R_P[k][i]['E_Other'] + R_P[k][i]['E_Change_max'] for i in Robots for k in Times )
wasteconsumed = sum( R_P[k][i]['E_Change_max'] for i  in Robots for k in Times)





# ----------------------- Battery Degradation End ---------------------

battery_degradation=np.zeros(R)
for i in Robots:
    battery_degradation[i]=energy_discharged[i]/np.nanmax(energy_discharged[:])
    
Coeff_Var=math.sqrt(1/R*(sum( (battery_degradation[i] - sum(battery_degradation) / len(battery_degradation))**2   for i in Robots)))/(sum(battery_degradation) / len(battery_degradation))*100

max_diff=(np.max(battery_degradation)-np.min(battery_degradation))*100
print("q: ", q , " || Recursion: ", RR)
print("Weighted_objective", Finall[3] )
print("Obj1", Alg_obj1)
print("Obj2", Alg_obj2 )
print("Total weighted", Alg_total_obj_cost)
print("Run Time:", Alg_run_time )
print("energy_effectiveness: ", utilization/(utilization - wasteconsumed))

BD_Emax = np.zeros((T, R))
BD_Edod = np.zeros((T, R))

for k in Times:
    for i in Robots:
        if R_P[k][i]['Charge_Level'] > Emax:
            BD_Emax[k][i] = abs(R_P[k][i]['Charge_Level'] - Emax)
        else:
            if R_P[k][i]['Charge_Level'] < Edod :
                BD_Edod[k][i] = abs(R_P[k][i]['Charge_Level'] - Edod )
BD_C_Edod = (np.sum(BD_Edod))
BD_C_Emax = (np.sum(BD_Emax))# if File_Execution == True:
#     # Setting_df=pd.read_csv(File_name)
#     Setting_df.loc[Exp_no,"Alg_Coeff_Var"] = Coeff_Var
#     Setting_df.loc[Exp_no,"Alg_Total_Downtime"] = Alg_Total_Downtime
#     Setting_df.loc[Exp_no,"Alg_Q_Battery_Weight"] = q * Q_Battery_Weight
#     Setting_df.loc[Exp_no,"Alg_q"] = q
#     Setting_df.loc[Exp_no,"Alg_total_obj_cost"] = Alg_total_obj_cost
#     Setting_df.loc[Exp_no,"Alg_obj1"] = Alg_obj1
#     Setting_df.loc[Exp_no,"Alg_obj2"] = Alg_obj2
#     Setting_df.loc[Exp_no,"Alg_Wt_obj2"] = (Alg_obj2 * q * Q_Battery_Weight)
#     Setting_df.loc[Exp_no,"Alg_run_time"] = Alg_run_time
#     Setting_df.loc[Exp_no,"Alg_energy_effectiveness"] = utilization/(utilization - wasteconsumed)
#     Setting_df.loc[Exp_no,"Alg_execution"] = 1
#     Setting_df.loc[Exp_no,"Alg_max_diff"] = max_diff
#     Setting_df.loc[Exp_no,"Alg_total_RBD"] = sum(Robot_Battery_degradation[i] for i in Robots)
    
    
#     Setting_df.to_csv(File_name, index = False)
Total_Tasks = W * W_N * T
if File_Execution == True:
    Setting_df=pd.read_csv(File_name)
    Setting_df.loc[Exp_no,"Total_Tasks"] = Total_Tasks
    if RR == 0 :
        Setting_df.loc[Exp_no,"Alg_Coeff_Var"] = Coeff_Var
        Setting_df.loc[Exp_no,"Alg_Total_Downtime"] = Alg_Total_Downtime
        Setting_df.loc[Exp_no,"Alg_Q_Battery_Weight"] = Q_Battery_Weight
        Setting_df.loc[Exp_no,"Alg_q"] = q
        Setting_df.loc[Exp_no,"Alg_total_obj_cost"] = Alg_total_obj_cost
        Setting_df.loc[Exp_no,"Alg_obj1"] = Alg_obj1
        Setting_df.loc[Exp_no,"Alg_obj2"] = Alg_obj2
        Setting_df.loc[Exp_no,"Alg_Wt_obj2"] = (Alg_obj2 * Q_Battery_Weight)
        Setting_df.loc[Exp_no,"Alg_run_time"] = Alg_run_time
        Setting_df.loc[Exp_no,"Alg_energy_effectiveness"] = utilization/(utilization - wasteconsumed)
        Setting_df.loc[Exp_no,"Alg_Static"] = 1
        Setting_df.loc[Exp_no,"Alg_max_diff"] = max_diff
        Setting_df.loc[Exp_no,"Reccurance"] = RR
        Setting_df.loc[Exp_no,"Error"] = str(change)
        Setting_df.loc[Exp_no,"Alg_BD_C_Edod"] = BD_C_Edod
        Setting_df.loc[Exp_no,"Alg_BD_C_Emax"] = BD_C_Emax
        Setting_df.loc[Exp_no,"Alg_BD_C_Total"] = BD_C_Emax + BD_C_Edod 
        Setting_df.loc[Exp_no,"Alg_TA_percentage"] = ((Total_Tasks - Alg_Total_Downtime) / Total_Tasks) * 100

        
        
    else:
        Setting_df.loc[Exp_no,"R_Alg_Coeff_Var"] = Coeff_Var
        Setting_df.loc[Exp_no,"R_Alg_Total_Downtime"] = Alg_Total_Downtime
        Setting_df.loc[Exp_no,"R_Alg_Q_Battery_Weight"] = Q_Battery_Weight
        Setting_df.loc[Exp_no,"R_Alg_q"] = q
        Setting_df.loc[Exp_no,"R_Alg_total_obj_cost"] = Alg_total_obj_cost
        Setting_df.loc[Exp_no,"R_Alg_obj1"] = Alg_obj1
        Setting_df.loc[Exp_no,"R_Alg_obj2"] = Alg_obj2
        Setting_df.loc[Exp_no,"R_Alg_Wt_obj2"] = (Alg_obj2 * Q_Battery_Weight)
        Setting_df.loc[Exp_no,"R_Alg_run_time"] = Alg_run_time
        Setting_df.loc[Exp_no,"R_Alg_energy_effectiveness"] = utilization/(utilization - wasteconsumed)
        Setting_df.loc[Exp_no,"Alg_execution"] = 1
        Setting_df.loc[Exp_no,"R_Alg_max_diff"] = max_diff
        Setting_df.loc[Exp_no,"R_Reccurance"] = RR
        Setting_df.loc[Exp_no,"R_Alg_BD_C_Edod"] = BD_C_Edod
        Setting_df.loc[Exp_no,"R_Alg_BD_C_Emax"] = BD_C_Emax
        Setting_df.loc[Exp_no,"R_Alg_BD_C_Total"] = BD_C_Emax + BD_C_Edod    
        Setting_df.loc[Exp_no,"R_Alg_TA_percentage"] = ((Total_Tasks - Alg_Total_Downtime) / Total_Tasks) * 100 
    Setting_df.loc[Exp_no,"Total_Tasks"] = Total_Tasks
    Setting_df.to_csv(File_name, index = False)




if __name__ == '__main__':
    Parameters = TCM_Algorithm_Initial_Conditions()
