# -*- coding: utf-8 -*-
"""
Created on Tue Feb  2 16:48:50 2021

@author: aksha
"""
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np
import pandas as pd


File_name = 'test'+'.csv'
# setup = pd.DataFrame()

def TCM_Parameters(Exp_no, robots, navigations, distance, min_soc,  Initial_charge, max_soc):  

        
    E_Balance_Zero = Initial_charge
    # Parameters for Setup by current file
    Period_duration=600/3600 # Duration of each period in hrs
    Working_Period = 4 # working period lenght in hrs
    
    T = int(Working_Period/Period_duration)  # Number of periods
    R = robots   # Number of robots
    C = navigations   # Number of charging stations # equal to no of navigation task
    S=2     # Number of sensors installed on robots
    W = 5   # Number of non-navigation tasks
    W_N = navigations  # Number of navigation tasks
    div = 10 # Number of divisions while charging

    # create sets
    # Times = range(0, T)     # Set of periods
    Ex_Times = range(-1, T)     # Set of periods

    # Robots = range(0, R)    # Set of robots
    Non_Navigation_Tasks = range(0, W)  # Set of non-navigation tasks, e.g., face recognition
    Navigation_Tasks=range(0,W_N) # Set of navigation paths

    # Battery Energy Levels
    Ebat = 111.0     # Battery capacity (Wh)
    Edod = (1 - min_soc) * Ebat   # Depth of Discharge
    Emax = (max_soc * Ebat) # Preferred max charge level
    
    Charging_time=0.75 # hrs to completely recharge the battery
    
    
    # Parameters for Robot navigation and distance from stations
    Dist_change_max = distance # max distance to change navigation task or to go to a charging station
    
    Priority={j:1 for j in Non_Navigation_Tasks}
    #Priority=[2.999999999999999889e-01, 9.000000000000000222e-01, 5.999999999999999778e-01, 4.000000000000000222e-01, 2.999999999999999889e-01]
    # Priority = {0: 0.9, 1: 0.8, 2: 0.7, 3: 0.8, 4: 1}
    
    Y = {(k, j): 1 for k in Ex_Times for j in Non_Navigation_Tasks}
    # Y={(k,j):np.random.randint(0,2) for k in Times for j in Non_Navigation_Tasks}
    for j in Non_Navigation_Tasks:
        Y[-1, j] = 0
        
    # _______________________Gamma Matrix Calculation
    Gamma_Matrix = {(h, j): 1 for h in Navigation_Tasks for j in Non_Navigation_Tasks}
    # Gamma_Matrix={(h,j):np.random.randint(0,2) for h in Navigation_Tasks for j in Non_Navigation_Tasks}
    Gamma_Matrix = {(0, 0): 1, (0, 1): 1, (0, 2): 1, (0, 3): 1, (0, 4): 1, (1, 0): 1, (1, 1): 1, (1, 2): 0, (1, 3): 0, (1, 4): 1}
    
    for j in Non_Navigation_Tasks:  # Assigning at least one Navigation task to a non navigation task
        if sum(Gamma_Matrix[h, j] <= 0 for h in Navigation_Tasks):
            n = np.random.randint(0, W_N)
            Gamma_Matrix[n, j] = 1 
    
    # Computing and Sensing Coefficients and Parameters
    Locomotion_Power=21 # in W
    Sensing_Power={}
    Sensing_Power[0]=(1.3+2.2) # camera power in W
    Sensing_Power[1]=(1.9+0.9) # Lidar power in W
    
    # Parameters for Robot navigation and distance from stations
    Robot_Speed=1*3600 # Average robot speed in meter/hrs
    Max_distance={h:200 for h in Navigation_Tasks} # max distance between navigation paths and fartest charging station (meters)
    
    E_changeMax=(Locomotion_Power+Sensing_Power[0]+Sensing_Power[1]+2.5+0.8)*Dist_change_max/Robot_Speed # max energy spent due to changing nav task or to go to recharge
    
    q = 1
    
    Setting_df= {'Experiment_no':Exp_no, 'q' : q, 'Period_duration': Period_duration, 'Working_Period': Working_Period, 'No_of_robots':R, 'No_of_chargers':C, 'No_of_sensors':S, 'No_of_non_nav_tasks':W, 
                                        'No_of_nav_task':W_N, 'Period_divisions':div, 'Charging_time':Charging_time, 'Ebat':Ebat, 'Edod':Edod, 'Emax':Emax, 'Locomotion_Power':Locomotion_Power, 
                                        'Robot_Speed':Robot_Speed, 'Dist_change_max':Dist_change_max, 'Gamma_Matrix':Gamma_Matrix, 
                                      'E_Balance_Zero':E_Balance_Zero, 'E_changeMax':E_changeMax, 'Priority':Priority, 'Sensing_Power':Sensing_Power}
    
    return Setting_df
    
if __name__ == '__main__' :
    # TCM_Parameters()
     
    setup = pd.DataFrame()

    Ebat = 111 #Battery Capacity (Wh)
    Dist_change_max=[200,500,800,1100,1400] # updated battery degradation model 2- 3- 2021
    delta=[0.3,0.5,0.7,1] # Depth of Discharge
    SoC_max=[1,0.9,0.8,0.7] #[100,90,80,70]
    AMRs = range(3, 4) # nos of robots for experimental setup
    Exp_no = 1
    robots = 3
    navigations = 1
    # for robots in AMRs:
    for c_max in range(0, len(SoC_max)):
        for dod in range(0, len(delta) ):
            if ((SoC_max[c_max] * Ebat)) - ((1 - delta[dod]) * Ebat)  > 20 :
                E_Balance_Zero={i:np.random.uniform(low= ((1 - delta[dod]) * Ebat), high=(SoC_max[c_max] * Ebat), size=None) for i in range(0,robots)} # Initial energy balance (Wh)
                for distance in range(0, len(Dist_change_max)):
                    df = TCM_Parameters(Exp_no, robots, navigations, Dist_change_max[distance], delta[dod],  E_Balance_Zero, SoC_max[c_max])
                    df = pd.DataFrame.from_dict(df, orient='index')
                    df2 = df.T
                    setup = setup.append(df2)
                    Exp_no = Exp_no + 1
    setup.to_csv(File_name, index = False)
                    
                    
                    
                    
    

