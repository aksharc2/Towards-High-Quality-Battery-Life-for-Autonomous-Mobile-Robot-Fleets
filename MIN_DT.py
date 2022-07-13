#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#Changed Bis optiuon emin to Edod in line 448
import gurobipy as gp
import numpy as np
from gurobipy import GRB
import matplotlib.pyplot as plt
import time
from operator import itemgetter
import pandas as pd
import ast
from threading import Timer
import math


File_Execution = True # True if parameters to be collected from Setting.csv file.

Execution_File_name = 'test'+'.csv'

def TCM_Optimizer_Initial_Conditions():    # Parameters created
        
    # Parameters for Setup by current file
    Period_duration = 600/3600 # Duration of each period in hrs
    Working_Period = 4 # working period lenght in hrs
    
    T = int(Working_Period/Period_duration)  # Number of periods
    R =  3  # Number of robots
    C = 1   # Number of charging stations
    S=2     # Number of sensors installed on robots
    W = 5   # Number of non-navigation tasks
    W_N = 2  # Number of navigation tasks
    div = 10 # Number of divisions while charging
    q = 0 # importance to battery degradation # || For MIN_DT q = 0
    # create sets
    Times = range(0, T)     # Set of periods
    Ex_Times = range(-1, T)     # Set of periods

    Robots = range(0, R)    # Set of robots
    Non_Navigation_Tasks = range(0, W)  # Set of non-navigation tasks, e.g., face recognition
    Navigation_Tasks=range(0,W_N) # Set of navigation paths

    # Battery Energy Levels
    Ebat = 111.0     # Battery capacity (Wh) 
    Edod = 0 * Ebat   # Depth of Discharge # For MIN_DT Edod = 0
    Emax = 1 * Ebat  # Preferred max charge level  # For MIN_DT Emax = 111
    
    Charging_time=0.75 # hrs to completely recharge the battery
    
    # Parameters that must be received from function (TO MODIFY)
    E_Balance_Zero={i:np.random.uniform(low=Edod, high=Ebat, size=None) for i in Robots}     # Initial energy balance (Wh)
    # E_Balance_Zero = {0: 64.62687453093335, 1: 42.20103744538085, 2: 82.84048203889571}
    E_Balance_Zero = {0: 54.24208197191308, 1: 39.39478193039088, 2: 97.73882494934185}

    
    
    # Parameters for Robot navigation and distance from stations
    Dist_change_max = 800 # max distance to change navigation task or to go to a charging station
    

    Priority={j:1 for j in Non_Navigation_Tasks} #(0,1)
    #Priority=np.random.randint(1,10,size=W)/10
    #Priority=[2.999999999999999889e-01, 9.000000000000000222e-01, 5.999999999999999778e-01, 4.000000000000000222e-01, 2.999999999999999889e-01]
    #Priority = {0: 0.9, 1: 0.8, 2: 0.7, 3: 0.6, 4: 0.5}
    
    # _______________________Gamma Matrix Calculation
    Gamma_Matrix = {(h, j): 1 for h in Navigation_Tasks for j in Non_Navigation_Tasks}
    # Gamma_Matrix={(h,j):np.random.randint(0,2) for h in Navigation_Tasks for j in Non_Navigation_Tasks}
    

    
    # Computing and Sensing Coefficients and Parameters
    Locomotion_Power=21 # in W
    Sensing_Power={}
    Sensing_Power[0]=(1.3+2.2) # camera power in W
    Sensing_Power[1]=(1.9+0.9) # Lidar power in W
    
    # Parameters for Robot navigation and distance from stations
    Robot_Speed=1*3600 # Average robot speed in meter/hrs
   
    E_changeMax=(Locomotion_Power+Sensing_Power[0]+Sensing_Power[1]+2.5+0.8)*Dist_change_max/Robot_Speed # max energy spent due to changing nav task or to go to recharge
    
    
    Setting_df=pd.read_csv(Execution_File_name)
    Exp_no =  1 # + Setting_df.iloc[-1,0] +
    Setting_df.loc[Exp_no,"Experiment_no"] = Exp_no
    Setting_df.loc[Exp_no,"Period_duration"] = Period_duration
    Setting_df.loc[Exp_no,"Working_Period"] = Working_Period
    Setting_df.loc[Exp_no,"No_of_robots"] = R
    Setting_df.loc[Exp_no,"No_of_chargers"] = C
    Setting_df.loc[Exp_no,"No_of_sensors"] = S
    Setting_df.loc[Exp_no,"No_of_non_nav_tasks"] = W
    Setting_df.loc[Exp_no,"No_of_nav_task"] = W_N
    Setting_df.loc[Exp_no,"Period_divisions"] = div
    Setting_df.loc[Exp_no,"Charging_time"] = Charging_time
    Setting_df.loc[Exp_no,"Ebat"] = Ebat
    Setting_df.loc[Exp_no,"Edod"] = Edod
    Setting_df.loc[Exp_no,"Emax"] = Emax
    Setting_df.loc[Exp_no,"Locomotion_Power"] = Locomotion_Power
    Setting_df.loc[Exp_no,"Robot_Speed"] = Robot_Speed
    Setting_df.loc[Exp_no,"Dist_change_max"] = Dist_change_max
    Setting_df.loc[Exp_no,"Gamma_Matrix"] = str(Gamma_Matrix)
    Setting_df.loc[Exp_no,"E_Balance_Zero"] = str(E_Balance_Zero)
    Setting_df.loc[Exp_no,"E_changeMax"] = E_changeMax
    Setting_df.loc[Exp_no,"Priority"] = str(Priority)
    Setting_df.loc[Exp_no,"Sensing_Power"] = str(Sensing_Power)        
    
    Opt_Parameters = {'Period_duration': Period_duration, 'Working_Period': Working_Period, 'T': T, 'R': R, 'C': C, 'S': S, 'W': W, 'W_N': W_N, 
                  'div': div, 'Ebat':Ebat, 'Edod':Edod, 'Emax':Emax, 'Charging_time': Charging_time, 'E_Balance_Zero': E_Balance_Zero,
                  'Dist_change_max':Dist_change_max, 'Priority':Priority, 'Gamma_Matrix':Gamma_Matrix, 'Locomotion_Power':Locomotion_Power,
                  'Sensing_Power':Sensing_Power, 'Robot_Speed':Robot_Speed, 'E_changeMax':E_changeMax , 'Exp_no':Exp_no, 'q':q}
    
    return Opt_Parameters


def TCM_Initial_Conditions(Exp):     # Parameters called from file
    # Parameters called from file
    Setting_df=pd.read_csv(Execution_File_name)
    Exp_no = Exp
    Period_duration = Setting_df.loc[Exp_no,'Period_duration']
    Working_Period = Setting_df.loc[Exp_no,'Working_Period']
    T = int(Working_Period / Period_duration)  # Number of periods
    R = Setting_df.loc[Exp_no,"No_of_robots"]
    C = Setting_df.loc[Exp_no,"No_of_chargers"]
    S = Setting_df.loc[Exp_no,"No_of_sensors"]
    W = Setting_df.loc[Exp_no,"No_of_non_nav_tasks"]
    W_N = Setting_df.loc[Exp_no,"No_of_nav_task"]
    div = Setting_df.loc[Exp_no,"Period_divisions"]
    Charging_time = Setting_df.loc[Exp_no,"Charging_time"]     
    q =  0 # Setting_df.loc[Exp_no,"q"] # For MIN_DT q = 0
    # Battery Energy Levels
    Ebat = Setting_df.loc[Exp_no,'Ebat']  # Battery capacity (Wh)
    Edod = 0 # Setting_df.loc[Exp_no,'Edod']  # 0.2 * Ebat   # Depth of Discharge
    Emax = Ebat # Setting_df.loc[Exp_no,'Emax'] # 1 * Ebat  # Preferred max charge level

    Locomotion_Power = Setting_df.loc[Exp_no,"Locomotion_Power"]
    Robot_Speed = Setting_df.loc[Exp_no,"Robot_Speed"]
    Dist_change_max = Setting_df.loc[Exp_no,"Dist_change_max"] 
    
    gamma_string = Setting_df.loc[Exp_no,"Gamma_Matrix"]
    Gamma_Matrix = ast.literal_eval(gamma_string) 
    
    initial_charge_string = Setting_df.loc[Exp_no,"E_Balance_Zero"]
    E_Balance_Zero = ast.literal_eval(initial_charge_string)    
    
    E_changeMax = Setting_df.loc[Exp_no,"E_changeMax"] 
    
    Priority_string = Setting_df.loc[Exp_no,"Priority"]
    Priority = ast.literal_eval(Priority_string) 

    # Locomotion_Power = (Setting_df.loc[Exp_no,'Locomotion_Power'])  # in W
    sensing_power_string = Setting_df.loc[Exp_no,"Sensing_Power"]
    Sensing_Power = ast.literal_eval(sensing_power_string)

    TCM_Parameters = {'Period_duration': Period_duration, 'Working_Period': Working_Period, 'T': T, 'R': R, 'C': C, 'S': S, 'W': W, 'W_N': W_N, 
                  'div': div, 'Ebat':Ebat, 'Edod':Edod, 'Emax':Emax, 'Charging_time': Charging_time, 'E_Balance_Zero': E_Balance_Zero,
                  'Dist_change_max':Dist_change_max, 'Priority':Priority, 'Gamma_Matrix':Gamma_Matrix, 'Locomotion_Power':Locomotion_Power,
                  'Sensing_Power':Sensing_Power, 'Robot_Speed':Robot_Speed,  'E_changeMax':E_changeMax , 'Exp_no':Exp_no, 'q':q}
    
    
    return TCM_Parameters 



def TCM_Optimization():
    
    Period_duration = itemgetter('Period_duration')(Parameters)
    Working_period = itemgetter('Working_Period')(Parameters)
    T = math.ceil(Working_period/Period_duration)
    R = int(itemgetter('R')(Parameters))
    C = int(itemgetter('C')(Parameters))
    S = int(itemgetter('S')(Parameters))
    W = int(itemgetter('W')(Parameters))
    W_N = int(itemgetter('W_N')(Parameters))
    div = int(itemgetter('div')(Parameters))
    Ebat = itemgetter('Ebat')(Parameters)
    Edod = itemgetter('Edod')(Parameters)
    Emax = itemgetter('Emax')(Parameters)
    Charging_time = itemgetter('Charging_time')(Parameters)
    E_Balance_Zero = itemgetter('E_Balance_Zero')(Parameters)
    Priority = itemgetter('Priority')(Parameters)
    Gamma_Matrix = itemgetter('Gamma_Matrix')(Parameters)
    Locomotion_Power = itemgetter('Locomotion_Power')(Parameters)
    Sensing_Power = itemgetter('Sensing_Power')(Parameters)
    E_changeMax = itemgetter('E_changeMax')(Parameters)
    Exp_no = int(itemgetter('Exp_no')(Parameters))


    q = int(itemgetter('q')(Parameters))

    
    
    
    Q_Battery_Weight=q*T*W*W_N/R  # Importance of Battery lifetime on cost function

    # create sets
    Times = range(0, T)     # Set of periods
    ExTimes =  range(-1,T) # Set of extended periods which includes -1
    Robots = range(0, R)    # Set of robots
    Charging_stations = range(0, C) # Set of charging stations
    Sensors = range(0, S)   # Set of sensors
    Non_Navigation_Tasks = range(0, W)  # Set of non-navigation tasks, e.g., face recognition
    Navigation_Tasks=range(0,W_N) # Set of navigation paths
    Division = range(0,div) # Set of Divisions of a single period wile charging 
    
    E_end_min = Edod # desired min energy at end of working period.
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
    
    Alpha_Comp={i:2.5/0.279166818*Period_duration for i in Robots} # Computing Coefficient

    Alpha_Comp={i:2.5/0.279166818*Period_duration for i in Robots} # Computing Coefficient
    
    Alpha_Sensing={}
    Alpha_Sensing[0]= Sensing_Power[0]*Period_duration # Camera coefficient (Wh)
    Alpha_Sensing[1]= Sensing_Power[1]*Period_duration  # Lidar coefficient (Wh)
    
    Avg_Access_Time={l:0.01 for l in Sensors}  # Access time for Sensors in seconds
    
    Task_Inference_Time={j:M_Task[j]*0.539/(0.279166818) for j in Non_Navigation_Tasks} # Inference Time for non-navigation tasks (sec)
    Nav_Inference_Time={h:M_Nav[h]*0.539/(0.279166818) for h in Navigation_Tasks} # Inference Time for non-navigation tasks (sec)
    
    Tasks_Sensing_Rate={(j,l):1/Task_Inference_Time[j] for j in Non_Navigation_Tasks for l in Sensors} # samples/sec
    Nav_Sensing_Rate={(h,l):1/Nav_Inference_Time[h] for h in Navigation_Tasks for l in Sensors} # samples/sec


    M_Max={i:20*10**-1 for i in Robots}
    
    Start_time = time.time()
    # Create a new model
    m = gp.Model("qp")
    
    x = {}
    z = {}
    d = {}
    e = {}
    e_charged={}
    e_charged_1 = {}
    e_res_Task={}
    e_res_Nav={}
    e_other={}
    e_change_max = {}
    a = {}
    b = {}
    aux1={}
    aux2={}
    aux3={}
    Robot_Navigation_state={}
    y={}
    
    obj1 = 0
    obj2 = 0
    aux3_sum = 0
    W_obj2=0
    
    
    for k in Times:
        for i in Robots:
            e[k, i] = m.addVar(vtype=GRB.CONTINUOUS, name='e_(%s,%s)' % (k, i)) #Energy balance
            e_res_Nav[k, i] = m.addVar(vtype=GRB.CONTINUOUS, name='e_res_Nav_(%s,%s)' % (k, i)) #
            e_res_Task[k, i] = m.addVar(vtype=GRB.CONTINUOUS, name='e_res_Task(%s,%s)' % (k, i)) #
            e_other[k, i] = m.addVar(vtype=GRB.CONTINUOUS, name='e_other(%s,%s)' % (k, i)) #
            e_charged[k, i] = m.addVar(vtype=GRB.CONTINUOUS, name='e_charged(%s,%s)' % (k, i)) #
            e_charged_1[k, i] = m.addVar(vtype=GRB.CONTINUOUS, name='e_charged_1(%s,%s)' % (k, i)) #
            e_change_max[k, i] = m.addVar(vtype=GRB.CONTINUOUS, name='e_change_max(%s,%s)' % (k, i)) #
            
    for k in Times:
        for i in Robots:
            for j in Non_Navigation_Tasks:
                for h in Navigation_Tasks:
                    x[k, i, h,j] = m.addVar(vtype=GRB.BINARY,name='x_(%s,%s,%s,%s)'%(k,i,h,j))
    
    for k in Times:
        for j in Non_Navigation_Tasks:
            for h in Navigation_Tasks:
                obj1 = obj1 + Priority[j]*(Gamma_Matrix[(h,j)] - sum(x[k,i,h,j] for i in Robots))
    
    
    for k in Times:
        for i in Robots:
            for h in Navigation_Tasks:
                Robot_Navigation_state[k,i,h] = m.addVar(vtype=GRB.BINARY,name='Robot_Navigation_state[%s,%s,%s]'%(k,i,h))
                y[k,i,h]= m.addVar(vtype=GRB.BINARY,name='y[%s,%s,%s]'%(k,i,h))
                
                
                
    for k in Times:
        for i in Robots:
            for c in Charging_stations:
                z[k, i, c] = m.addVar(vtype=GRB.BINARY,name='z_(%s,%s,%s)'%(k,i,c))
                a[k, i, c] = m.addVar(vtype=GRB.BINARY,name='a_(%s,%s,%s)'%(k,i,c))
                b[k, i, c] = m.addVar(vtype=GRB.BINARY,name='b_(%s,%s,%s)'%(k,i,c))
                for l in Division:
                    d[k, i, c, l] = m.addVar(vtype=GRB.BINARY,name='d_(%s,%s,%s,%s)'%(k,i,c,l))
            aux1[k, i] = m.addVar(vtype=GRB.CONTINUOUS,name='aux1_(%s,%s)'%(k,i))
            aux2[k, i] = m.addVar(vtype=GRB.CONTINUOUS,name='aux2_(%s,%s)'%(k,i))
            
                
    for k in Times:
        for i in Robots:
            #for h in Navigation_Tasks:
            aux3[k,i] = m.addVar(vtype=GRB.BINARY,name='aux3_(%s,%s)'%(k,i))
                
    
    m.update()
    
    for k in Times:
        for i in Robots:
            for c in Charging_stations:
                obj2 = obj2 + a[k, i, c] * aux1[k,i] + b[k, i, c] * aux2[k,i]
                
                    
    for k in Times:
        for i in Robots:
            #for h in Navigation_Tasks:
                aux3_sum=aux3_sum + aux3[k,i]        
            
    W_obj2= Q_Battery_Weight*obj2
    
    obj = obj1 + W_obj2
    
    m.update()
    
    #Initialization
    for i in Robots:
        e[-1,i]=E_Balance_Zero[i]
        for h in Navigation_Tasks:
            Robot_Navigation_state[-1,i,h]=0
            
            
        for c in Charging_stations:
            z[-1, i, c] = Charge_State_Zero[i]
    
    
    for k in Times:
        for h in Navigation_Tasks:
            for j in Non_Navigation_Tasks:
                m.addConstr(sum(x[k, i, h,j] for i in Robots) <= Gamma_Matrix[(h,j)], name="Task_Activitiy_Status_[%s,%s,%s]" % (k,h,j)) #Constraint 4
    
    
    for k in Times:
        for i in Robots:
            for h in Navigation_Tasks:
                m.addConstr(sum(x[k, i, h,j] for j in Non_Navigation_Tasks) >= Robot_Navigation_state[k,i,h], name="Nav_Activitiy_Status_[%s,%s,%s]" % (k,i,h)) #Constraint 4bis to avoid that a navigation task is allocated without non-navigation tasks.
    
    
    for k in Times:
        for i in Robots:
            for h in Navigation_Tasks:
                for j in Non_Navigation_Tasks:
                    m.addConstr(x[k, i, h,j]<= Gamma_Matrix[(h,j)], name="State_consistency_[%s,%s,%s,%s]" % (k, i,h,j)) #Constraint 5
    
    
    for k in Times:
        for i in Robots:
            for h in Navigation_Tasks:
                for j in Non_Navigation_Tasks:
                    m.addConstr(Robot_Navigation_state[k,i,h]>=x[k,i,h,j], name="MAX_[%s,%s,%s,%s]" % (k, i,h,j)) #Constraint 6 part1 to force the variable Robot_Navigation_state[k,i,h] to be equal to 0 if all the x are zeros.
    
    
    
    for k in Times:
        for i in Robots:
            m.addConstr(sum(z[k, i, c] for c in Charging_stations)+sum(Robot_Navigation_state[k,i,h] for h in Navigation_Tasks)<=1, name="State_consistency_[%s,%s,%s]" % (k, i,h)) #Constraint 6 part 2
    
    
    for k in Times:
        m.addConstr(sum(z[k, i, c]  for c in Charging_stations for i in Robots) <= C, name="Limited_stations_[%s]" % (k)) #Constraint 7
    
    
    for k in Times:
        for i in Robots:
            m.addConstr(sum(Robot_Navigation_state[k, i, h]*M_Nav[h] for h in Navigation_Tasks)+sum(x[k,i,h,j]*M_Task[j] for h in Navigation_Tasks for j in Non_Navigation_Tasks) <= M_Max[i], name="Limited_Resource_capacity_[%s,%s]" % (k, i)) #Constraint 8
    
    
    for k in Times:
        for i in Robots:
            #m.addConstr(e[k,i]>=sum(Robot_Navigation_state[k,i,h]*E_NavMax[h] for h in Navigation_Tasks), name="Min_Energy_Charge_[%s,%s]" % (k, i))  #Constraint 9
            m.addConstr(e[k,i]>=E_end_min, name="Min_Energy_Charge_[%s,%s]" % (k, i))  #Constraint 9
            if k>=T-1:
                m.addConstr(e[k,i]>=E_end_min, name="Min_Energy_End_[%s,%s]" % (k, i))  #Constraint 9b
                    
            
    for k in Times:
        for i in Robots:
            m.addConstr(e_charged_1[k,i]==e[k-1,i] + e_charged[k,i] - e_res_Nav[k,i] - e_res_Task[k,i] - e_other[k,i] - e_change_max[k,i] , name="Energy_Balance_1[%s,%s]" % (k, i))  #Constraint 10_1
            m.addConstr(e_charged[k,i]==sum(z[k, i, c]*Charging_rate for c in Charging_stations), name="Energy_Charge_[%s,%s]" % (k, i))  #Constraint 10_1
            # m.addConstr(e_charged_1[k,i]== sum(z[k, i, c]*Charging_rate for c in Charging_stations), name="Energy_Charge_1_[%s,%s]" % (k, i))  #Constraint 10_1

            # m.addConstr(e_charged[k,i]==sum(d[k, i, c, l]*Divided_charging_rate for c in Charging_stations for l in Division), name="Energy_Charge_[%s,%s]" % (k, i))  #Constraint 10_1
            m.addConstr(e_res_Task[k,i]==Alpha_Comp[i]*sum(x[k,i,h,j]*M_Task[j] for h in Navigation_Tasks for j in Non_Navigation_Tasks)+sum(Alpha_Sensing[l]*x[k,i,h,j]*Tasks_Sensing_Rate[(j,l)]*Avg_Access_Time[l] for l in Sensors for h in Navigation_Tasks for j in Non_Navigation_Tasks), name="Energy_Res_Task_[%s,%s]" % (k, i))  #Constraint 10_1
            m.addConstr(e_res_Nav[k,i]==Alpha_Comp[i]*sum(Robot_Navigation_state[k,i,h]*M_Nav[h] for h in Navigation_Tasks)+sum(Alpha_Sensing[l]*Robot_Navigation_state[k,i,h]*Nav_Sensing_Rate[(h,l)]*Avg_Access_Time[l] for l in Sensors for h in Navigation_Tasks), name="Energy_Res_Nav[%s,%s]" % (k, i))  #Constraint 10_1
            #m.addConstr(e_other[k,i]==sum(Alpha_Loc[h]*Robot_Navigation_state[k,i,h] for h in Navigation_Tasks), name="Energy_Other[%s,%s]" % (k, i))  #Constraint 10_1
            m.addConstr(e_other[k,i]==sum(Alpha_Loc[h]*Robot_Navigation_state[k,i,h]  for h in Navigation_Tasks) , name="Energy_Other[%s,%s]" % (k, i))  #Constraint 10_1
            m.addConstr(e_change_max[k,i]== E_changeMax * aux3[k,i], name="E_CHANGE_MAX[%s,%s]" % (k, i))  #Constraint 10_1
            m.addGenConstrMin(e[k,i], [e_charged_1[k,i] , Emax], name="Energy_Charge_[%s,%s]" % (k, i))
            
    for k in Times:
        for i in Robots:
            m.addConstr(e[k,i]<=Ebat, name="Max_Energy_Stored_[%s,%s]" % (k, i))  #Constraint 10
    
    for k in Times:
        for i in Robots:
            for c in Charging_stations:
                m.addConstr(a[k, i, c] == (1 - z[k - 1, i, c]) * z[k, i, c], name="Aux_[%s,%s,%s]" % (k, i, c))
                m.addConstr(aux1[k, i] >= ((e[k-1, i] - Edod) / Ebat), name="Aux3_[%s,%s,%s]" % (k, i, c))
                m.addConstr(aux1[k, i] >= -((e[k-1, i] - Edod) / Ebat), name="Aux3_[%s,%s,%s]" % (k, i, c))
                
                m.addConstr(b[k, i, c] == z[k - 1, i, c] * (1 - z[k, i, c]), name="Aux2_[%s,%s,%s]" % (k, i, c))
                m.addConstr(aux2[k, i] >= ((Emax - e[k-1, i]) / Ebat), name="Aux4_[%s,%s,%s]" % (k, i, c))
                m.addConstr(aux2[k, i] >= - ((Emax - e[k-1, i]) / Ebat), name="Aux4_[%s,%s,%s]" % (k, i, c))
    
    
    
    for k in Times:
        for i in Robots:
              #m.addConstr(aux3[k,i] == sum((Robot_Navigation_state[k-1,i,h]*(1-Robot_Navigation_state[k,i,h]) + ((1-Robot_Navigation_state[k-1,i,h])*Robot_Navigation_state[k,i,h])) for h in Navigation_Tasks), name="Aux3_[%s,%s]" % (k, i))
              m.addConstr(aux3[k,i] == sum( y[k,i,h] for h in Navigation_Tasks), name="Aux3_[%s,%s]" % (k, i))
             
             
    for k in Times:
        for i in Robots:   
            for h in Navigation_Tasks:
                m.addConstr(y[k,i,h]<= Robot_Navigation_state[k-1,i,h] + Robot_Navigation_state[k,i,h] , name="Y_[%s,%s,%s]" % (k, i, h))
                m.addConstr(y[k,i,h]>= Robot_Navigation_state[k-1,i,h] - Robot_Navigation_state[k,i,h] , name="Y_[%s,%s,%s]" % (k, i, h))
                m.addConstr(y[k,i,h]>= Robot_Navigation_state[k,i,h] - Robot_Navigation_state[k-1,i,h] , name="Y_[%s,%s,%s]" % (k, i, h))
                m.addConstr(y[k,i,h]<= 2 - Robot_Navigation_state[k-1,i,h] - Robot_Navigation_state[k,i,h] , name="Y_[%s,%s,%s]" % (k, i, h))
             
            
    for k in Times:
        for i in Robots:
            for c in Charging_stations:
                for l in Division:
                    m.addConstr(d[k,i,c,l] <= z[k,i,c] , name="D_[%s,%s,%s,%s]" % (k,i,c,l))
            
    #*********************************************
    
    m.setObjective(obj)
    m.Params.MIPgap = 0.01
    m.Params.TIME_LIMIT = 7200
    m.update()
    m.write('problem.lp')
    m.optimize()
    
    End_time = time.time()
    
    Optimizer_Run_Time = End_time - Start_time
    

    print('Obj: %g' % obj.getValue())
    print('Obj1: %g' % obj1.getValue())
    print('Obj2: %g' % obj2.getValue())
    print('Obj2 weighted: %g' % W_obj2.getValue())
    print('Aux3_sum: %g' % aux3_sum.getValue())
    print("Run Time:", Optimizer_Run_Time)
    
    
    #*********************************************    
    
    Task_Downtime=np.zeros((T+1, W_N))
    for k in Times:
        for h in Navigation_Tasks:
            for j in Non_Navigation_Tasks:
                Task_Downtime[k+1,h]=Task_Downtime[k+1,h]+(Gamma_Matrix[h,j]-sum(m.getVarByName('x_(%s,%s,%s,%s)'%(k,i,h,j)).x for i in Robots))
    
    
    allocated_tasks=np.zeros((T+1, R, W_N))
    for i in Robots:
        for h in Navigation_Tasks:
            for k in Times:
                for j in Non_Navigation_Tasks:
                    #print(m.getVarByName('x_(%s,%s,%s,%s)'%(k,0,0,j)))
                    allocated_tasks[k+1,i,h]=allocated_tasks[k+1,i,h]+m.getVarByName('x_(%s,%s,%s,%s)'%(k,i,h,j)).x
    
    
    charging_allocation=np.zeros((T+1, R))
    for i in Robots:
        charging_allocation[0,i]=Charge_State_Zero[i]
        for k in Times:
            for c in Charging_stations:
                #print(m.getVarByName('x_(%s,%s,%s,%s)'%(k,0,0,j)))
                charging_allocation[k+1,i]=charging_allocation[k+1,i]+m.getVarByName('z_(%s,%s,%s)'%(k,i,c)).x
    
    
    state_of_charge=np.zeros((T+1, R))
    for i in Robots:
        state_of_charge[0,i]=E_Balance_Zero[i]/Ebat*100
        for k in Times:
                #print(m.getVarByName('x_(%s,%s,%s,%s)'%(k,0,0,j)))
                state_of_charge[k+1,i]=m.getVarByName('e_(%s,%s)'%(k,i)).x /Ebat*100
        
        
    for h in Navigation_Tasks:
        plt.bar(range(0,T+1),Task_Downtime[:,h])
        plt.ylabel('# of Unallocated Tasks for Navigation %s'%(h),fontweight='bold')
        plt.xlabel('Time Period',fontweight='bold')
        plt.xlim([0,T+1])
        plt.show()
        plt.clf()
    
    
    for i in Robots:
        for h in Navigation_Tasks:
            plt.bar(range(0,T+1),allocated_tasks[:,i,h],label="Navigation Task %s"%h)
        plt.ylabel('Number of Assigned Tasks to Robot %s '%(i),fontweight='bold')
        plt.xlabel('Time Period',fontweight='bold')
        plt.xlim([0,T+1])
        plt.ylim(0, W+3)
        plt.legend(loc="best")
        plt.show()
        plt.clf()
    
    
    for i in Robots:
        plt.bar(range(0,T+1),charging_allocation[:,i],label="Robot %s"%i)
        plt.ylabel('Charging State',fontweight='bold')
        plt.xlabel('Time Period',fontweight='bold')
        plt.legend(loc="best")
        plt.xlim([0,T])
        plt.show()
        plt.clf()
    
    
    for i in Robots:
        plt.plot(range(0, T + 1), state_of_charge[:, i], label="Robot %s" % i)
    plt.axhline(y=Emax / Ebat * 100, color='r', linestyle='-', label="Emax")
    plt.axhline(y=Edod / Ebat * 100, color='r', linestyle='--', label="Edod")
    plt.ylabel('State of Charge (%)', fontweight='bold')
    plt.xlabel( Exp_no , fontweight='bold')
    plt.xlim([0, T])
    plt.ylim([0, 100])  #
    for l in range(0, T, 2):
        plt.axvline(x=[l], color='grey', alpha=0.1)
    plt.legend(bbox_to_anchor=(0., -0.3, 1., -0.11), loc='lower left',
                ncol=2, mode="expand", borderaxespad=0.)
    plt.show()
    plt.clf()
    
    
    n_charging_peak = { i : sum( m.getVarByName('b_(%s,%s,%s)'%(k,i,c)).x  for k in Times for c in Charging_stations) for i in Robots}
    n_charging_valley = { i : sum( m.getVarByName('a_(%s,%s,%s)'%(k,i,c)).x  for k in Times for c in Charging_stations) for i in Robots}
    Energy_Utilized = {(k,i) : 0 for k in ExTimes for i in Robots}    

    for k in Times:
        for i in Robots:           
            Energy_Utilized[k,i]=m.getVarByName('e_res_Nav_(%s,%s)'%(k,i)).x + m.getVarByName('e_res_Task(%s,%s)'%(k,i)).x + m.getVarByName('e_other(%s,%s)'%(k,i)).x + m.getVarByName('e_change_max(%s,%s)'%(k,i)).x
    Charging_E_Change_Max = E_changeMax * sum(n_charging_peak[i] + n_charging_valley[i] for i in Robots)
    # print("Charging_E_Change_Max:", Charging_E_Change_Max , sum(n_charging_peak[i] + n_charging_valley[i] for i in Robots))
    
    Opt_Effectiveness = sum(Energy_Utilized[k,i] for k in Times for i in Robots) / ( sum(Energy_Utilized[k,i] for k in Times for i in Robots)  - Charging_E_Change_Max )
    
    state_of_charge=np.zeros((T+1, R))
    energy_discharged=np.zeros(R)
    for i in Robots:
        state_of_charge[0,i]=E_Balance_Zero[i]/Ebat*100
        for k in Times:
                #print(m.getVarByName('x_(%s,%s,%s,%s)'%(k,0,0,j)))
               state_of_charge[k+1,i]=m.getVarByName('e_(%s,%s)'%(k,i)).x /Ebat*100
               if  state_of_charge[k+1,i]<=state_of_charge[k,i]:
                   energy_discharged[i]=energy_discharged[i]+(state_of_charge[k,i]-state_of_charge[k+1,i])*Ebat/100
                   
    # ----------------- Battery Degradation Cost ------------------

    BD_Emax = np.zeros((T, R))
    BD_Edod = np.zeros((T, R))
    
    for k in Times:
        for i in Robots:
            if m.getVarByName('e_(%s,%s)'%(k,i)).x > Emax:
                BD_Emax[k][i] = abs(m.getVarByName('e_(%s,%s)'%(k,i)).x - Emax)
            else:
                if m.getVarByName('e_(%s,%s)'%(k,i)).x < Edod :
                    BD_Edod[k][i] = abs(m.getVarByName('e_(%s,%s)'%(k,i)).x - Edod )
             
    BD_C_Edod = (np.sum(BD_Edod))
    BD_C_Emax = (np.sum(BD_Emax))
    
    # ----------------- Battery Degradation Cost ------------------
    # ----------------- 
    
    battery_degradation=np.zeros(R)
    for i in Robots:
        battery_degradation[i]=energy_discharged[i]/np.nanmax(energy_discharged[:])
        
    Coeff_Var=math.sqrt(1/R*(sum( (battery_degradation[i] - sum(battery_degradation) / len(battery_degradation))**2   for i in Robots)))/(sum(battery_degradation) / len(battery_degradation))*100
    max_diff=(np.max(battery_degradation)-np.min(battery_degradation))*100
    if File_Execution == True:
        Setting_df=pd.read_csv(Execution_File_name)
        Setting_df.loc[Exp_no,"Opt_max_diff"] = max_diff
        Setting_df.loc[Exp_no,"Opt_Coeff_Var"] = Coeff_Var
        Setting_df.loc[Exp_no,"Opt_Total_Downtime"] = np.sum(Task_Downtime)
        Setting_df.loc[Exp_no,"Q_Battery_Weight"] = Q_Battery_Weight
        Setting_df.loc[Exp_no,"q"] = q
        Setting_df.loc[Exp_no,"Opt_total_obj_cost"] = (' %g' % obj.getValue())
        Setting_df.loc[Exp_no,"Opt_obj1"] = ('%g' % obj1.getValue())
        Setting_df.loc[Exp_no,"Opt_obj2"] = ('%g' % obj2.getValue())
        Setting_df.loc[Exp_no,"Opt_Wt_obj2"] = ('%g' % W_obj2.getValue())
        Setting_df.loc[Exp_no,"Opt_run_time"] = Optimizer_Run_Time
        Setting_df.loc[Exp_no,"Opt_energy_effectiveness"] = Opt_Effectiveness
        Setting_df.loc[Exp_no,"MIN_DT"] = 1
        Setting_df.loc[Exp_no,"Opt_BD_C_Edod"] = BD_C_Edod
        Setting_df.loc[Exp_no,"Opt_BD_C_Emax"] = BD_C_Emax
        Setting_df.to_csv(Execution_File_name, index = False)

if __name__ == '__main__':
    if File_Execution == False:
        Parameters = TCM_Optimizer_Initial_Conditions()
        TCM_Optimization()    
    else:
        Setting_df=pd.read_csv(Execution_File_name)
        if 'MIN_DT' not in Setting_df:
            Setting_df['MIN_DT'] = 0 
        loop = len(Setting_df)  #int(Setting_df.iloc[-1,0])
        for Exp_no in range(0,loop):
            print('\n----------------------- Exp_no:' , Exp_no +1, '-----------------------\n')
            if Setting_df.loc[Exp_no,"MIN_DT"] == 1:
                print("MIN_DT has executed ",Exp_no +1," parameters")
            else:
                Parameters = TCM_Initial_Conditions(Exp_no)
                TCM_Optimization()
        print("Experiments Completed")
