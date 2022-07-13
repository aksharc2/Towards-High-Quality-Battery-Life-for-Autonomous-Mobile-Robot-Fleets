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

Whenever a script reads initial parameters from the CSV file and update the results in the CSV file, it also sets the respective execution value to 1 (as shown in  column CP of the screenshot). ![This is an image](https://github.com/aksharc2/Towards-High-Quality-Battery-Life-for-Autonomous-Mobile-Robot-Fleets/blob/main/MINLP.PNG)

When the `File_Execution = False`, the program reads the initial conditions from `Initial_Conditions()` functions in TCM and other baselines. 

**MIN_DTC** is an MINLP model that considers maximizing the task allocation while ensuring that the energy level remains within the minimum (EDOD ) and maximum (Emax) battery threshold.
 
**MIN_DT** is a simple MINLP model for task allocation and charging schedule that maximizes only Task Allocation.

**MINLP** is a simple MINLP model for the proposed approach, which persorms task allocation considering the battery degradation cost.

**TCM** is the proposed greedy algorithm.

**NOTE:** If the experiment setup in the .csv files already have a solution, then the program will skip those experiments. To rerun the experiment change the respecive columns of the .csv file to 0 (deleting the respective column will cause the program to find the solution of all experimental setups in the file). 
