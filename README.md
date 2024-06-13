## [**T**ask and **C**harging schedule **M**anager](https://doi.ieeecomputersociety.org/10.1109/ACSOS55765.2022.00024)

**Abstract**
Autonomous Mobile Robots (AMRs) rely on rechargeable batteries to execute several objective tasks during navigation. Previous research has focused on minimizing task downtime by coordinating task allocation and/or charge scheduling across multiple AMRs. However, they do not jointly ensure low task downtime and high-quality battery life.In this paper, we present TCM, a Task allocation and Charging Manager for AMR fleets. TCM allocates objective tasks to AMRs and schedules their charging times at the available charging stations for minimized task downtime and maximized AMR batteries’ quality of life. We formulate the TCM problem as an MINLP problem and propose a polynomial-time multi-period TCM greedy algorithm that periodically adapts its decisions for high robustness to energy modeling errors. We experimentally show that, compared to the MINLP implementation in Gurobi solver, the designed algorithm provides solutions with a performance ratio of 1.15 at a fraction of the execution time. Furthermore, compared to representative baselines that only focus on task downtime, TCM achieves similar task allocation results while providing much higher battery quality of life.

DOI: [https://doi.ieeecomputersociety.org/10.1109/ACSOS55765.2022.00024](https://doi.ieeecomputersociety.org/10.1109/ACSOS55765.2022.00024](https://ieeexplore.ieee.org/abstract/document/9935008)

Following are the important packages that are required to execute the TCM.py and MINLP.py files:
|package | pip installation command | 
| ------------- | ------------- | 
| [gurobipy](https://www.gurobi.com/documentation/9.5/quickstart_linux/cs_using_pip_to_install_gr.html)| `python -m pip install gurobipy`   | 
| [numpy](https://numpy.org/install/)  | `pip install numpy`  |   
| [matplotlib](https://matplotlib.org/stable/users/installing/index.html) | `python -m pip install -U matplotlib`|  
| [time](https://pypi.org/project/times/) | `pip install times`|  
| [pandas](https://pandas.pydata.org/docs/getting_started/install.html) | `pip install pandas`|  
| [math](https://pypi.org/project/python-math/) | `pip install python-math` |


**Note:** to use gurobypy, a Gurobi license is needed. This license is free for academic use and can be obtained from this [website](https://www.gurobi.com/academia/academic-program-and-licenses/). Gurobi is only required for solving the baseline optimization problem in MINLP, MIN_DT and MIN_DTC.


This repository contains the proposed TCM algorithm and other baselines MINLP, MID_DT and MIN_DTC explained in the paper. It also contains an `experimentSetup.py` file which creates initial parameters in random order for different experiment setups. 
### Baselines:
**MIN_DTC** is an MINLP model that considers maximizing the task allocation while ensuring that the energy level remains within the minimum (EDOD ) and maximum (Emax) battery threshold.
 
**MIN_DT** is a simple MINLP model for task allocation and charging schedule that maximizes only Task Allocation.

**MINLP** is a simple MINLP model for the proposed approach, which performs task allocation considering the battery degradation cost.

**TCM** is the proposed greedy algorithm. 

**TCM_Static** is a greedy algorithm that provides a solution once at the beginning of the working period; hence, this baseline cannot able to handel any modeling errors it encounters. 

### Creating multiple test scenarios:
To create different scenarios, change the range of variables used in `experimentSetup.py.` This will create a CSV file with multiple experimental setups. Each row in the CSV(e.g., test.csv) is a different experimental setup. Use this file as input by changing the `File_name` variable and set `File_Execution = True` in TCM and other baselines to get the solution for each scenario. TCM and other baselines will write their respective results in the same file. ( **Note that the CSV file must be in the same folder along with other scripts** )


### Executing scripts:
1. Update the `File_name` variable with the CSV file name and set `File_Execution = True`. This will make the script get the initial parameters from the CSV file and write the results to the CSV file. 
2. When a script gets an experiment result and updates it to the CSV file, it also sets the respective execution value to 1 (as shown in column CP for MINLP in the screenshot). This is done to avoid re-running the experiments that already have a solution. ![This is an image](https://github.com/aksharc2/Towards-High-Quality-Battery-Life-for-Autonomous-Mobile-Robot-Fleets/blob/main/MINLP.PNG)
3. If there is a need to re-run all the experiments, then delete the respective column, or if there is a need to solve a particular experiment again, then delete the respective cell value(e.g., in the above figure if you want to re-run the entire experiments for MINLP again then delete column for MINLP).
4. When the `File_Execution = False,` the program reads the initial conditions from `Initial_Conditions()` functions in TCM and other baselines. You can change the parameters in the Initial Condition function of the respective script. 


### Testing TCM to modeling errors:
To test TCM to modeling erros, 
1. Set `Error_introduced` to `1` and provide a minimum (error_lower_limit) and maximum (error_upper_limit) modeling error percentage in `experimentSetup.py`. This will create a random error within the given range in each time period and save it in the CSV file.
2. In `TCM.py,` set `Error_introduced` to `1`. By default TCM dynamically updates the solution in each time period; therefore, it handles any modeling errors it encounters. 
   - To check the effect of the error on a `TCM_Static` baseline, in which the solution is obtained only once and does not take care of the modeling errors, set **RR = 0** in the `TCM.py` file.



**Citation**

@INPROCEEDINGS {9935008,
author = {A. Chavan and M. Brocanelli},
booktitle = {2022 IEEE International Conference on Autonomic Computing and Self-Organizing Systems (ACSOS)},
title = {Towards High-Quality Battery Life for Autonomous Mobile Robot Fleets},
year = {2022},
volume = {},
issn = {},
pages = {61-70},
keywords = {greedy algorithms;schedules;navigation;computational modeling;charging stations;robustness;batteries},
doi = {10.1109/ACSOS55765.2022.00024},
url = {https://ieeexplore.ieee.org/abstract/document/9935008},
publisher = {IEEE Computer Society},
address = {Los Alamitos, CA, USA},
month = {sep}
}
