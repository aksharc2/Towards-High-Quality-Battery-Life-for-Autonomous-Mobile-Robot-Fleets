**T**ask and **C**harging schedule **M**anager is a combined task and charging scheduler.



Following are the important packages that are required to execute the TCM.py and MINLP.py files:
|package | pip installation command | 
| ------------- | ------------- | 
| [gurobipy](https://www.gurobi.com/documentation/9.5/quickstart_linux/cs_using_pip_to_install_gr.html)| `python -m pip install gurobipy`   | 
| [numpy](https://numpy.org/install/)  | `pip install numpy`  |   
| [matplotlib](https://matplotlib.org/stable/users/installing/index.html) | `python -m pip install -U matplotlib`|  
| [time](https://pypi.org/project/times/) | `pip install times`|  
| [pandas](https://pypi.org/project/times/) | `pip install pandas`|  
| [math](https://pypi.org/project/python-math/) | `pip install python-math` |


**Note:** to use gurobypy, Gurobi liscense is needed. This license is free for academic use, and can be obtained from there [website](https://www.gurobi.com/academia/academic-program-and-licenses/).


This repository contains the proposed TCM algorithm and other baselines MINLP, MID_DT and MIN_DTC explained in the paper. It also contains an `experimentSetup.py` file which creats initial parameters in random order for different experiment setups. 

**To create different scenarios** change the range of variables used in `experimentSetup.py`. This will create a CSV file with multiple experimental setups. Each row in the CSV(eg. test.csv) is a different experiment setup. Use this file as an input by changing the `File_name` variable and set `File_Execution = True` in TCM and other baselines to get the solution of each scenario. TCM and other baselines will write their respective results to the same file. ( **note that the CSV file must be in the same folder along with other scripts** )

Whenever a script reads initial parameters from the CSV file and update the results in the CSV file, it also sets the respective execution value to 1 (as shown in  column CP for MINLP in the screenshot). This is done to avoid re-running the experiments that already have a solution. If there is a need to resolve the solution then delete the respective column or the respective cell value. 
![This is an image](https://github.com/aksharc2/Towards-High-Quality-Battery-Life-for-Autonomous-Mobile-Robot-Fleets/blob/main/MINLP.PNG)

When the `File_Execution = False`, the program reads the initial conditions from `Initial_Conditions()` functions in TCM and other baselines. 


**MIN_DTC** is an MINLP model that considers maximizing the task allocation while ensuring that the energy level remains within the minimum (EDOD ) and maximum (Emax) battery threshold.
 
**MIN_DT** is a simple MINLP model for task allocation and charging schedule that maximizes only Task Allocation.

**MINLP** is a simple MINLP model for the proposed approach, which persorms task allocation considering the battery degradation cost.

**TCM** is the proposed greedy algorithm.

### Testing TCM to modeling erros:
To test TCM to modeling erros, 
1. Set `Error_introduced` to `1` and provide a minimum (error_lower_limit) and maximum (error_upper_limit) modeling error percentage in `experimentSetup.py`. This will create a random error within the given range in each time period, and save it in the CSV file.
2. In `TCM.py` set `Error_introduced` to `1`. By default TCM dynamically updates the solution in each time period, therefore it handels any modeling erros it encounters. 
   - To check the effect of error on a `TCM_Static` baseline, in which the solution is obtained only once and does not take care of the modeling errors, set **RR = 0**.

