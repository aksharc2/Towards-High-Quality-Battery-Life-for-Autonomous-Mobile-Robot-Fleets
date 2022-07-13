**T**ask and **C**harging schedule **M**anager is a combined task and charging scheduler.



Following are the important packages that are required to execute the TCM.py and MINLP.py files:
|package | pip installation command | guide lines |
| ------------- | ------------- | ------------- |
| gurobipy | `python -m pip install gurobipy`   | [Gurobi](https://www.gurobi.com/documentation/9.5/quickstart_linux/cs_using_pip_to_install_gr.html) |
| numpy  | `pip install numpy`  | https://numpy.org/install/  |
| matplotlib | `python -m pip install -U matplotlib`| https://matplotlib.org/stable/users/installing/index.html |
| time | `pip install times`| https://pypi.org/project/times/ |
| pandas | `pip install pandas`| https://pypi.org/project/times/ |
| math | `pip install python-math` |https://pypi.org/project/python-math/ |


**Note:** to use gurobypy, Gurobi liscense is needed. This license is free for academic use, and can be obtained from there [website](https://www.gurobi.com/academia/academic-program-and-licenses/).


This repository contains the proposed TCM algorithm, MINLP solver and other baselines explained in the paper. It also contains an `experimentSetup.py` file which creats initial parameters in random order for different experiment setups. As per the requirements change the range of variables used in `experimentSetup.py` to genereate different experimental setups.



To save the output of the TCM algorithm and MINLP in a CSV file set `File_Execution = True`, and the Experiment_Results.csv **must** be in the same folder. When the `File_Execution = False`, the program reads the initial conditions from `Initial_Conditions()` functions in TCM and other baselines. 

The Experiment_Results.csv contains all the variable that can be changed, and the result from the TCM algorithm and MINLP will get saved in the .csv file. Each row in the Experiment_Results.csv is a different experiment setup. When the MINLP.py saves the results for the given experiment the `Opt_execution` is than changed to 1, simillarly, when TCM saves the result then `Alg_execution` is changed to 1.


**MIN_DTC** is an MINLP model that considers maximizing the task allocation while ensuring that the energy level remains within the minimum (EDOD ) and maximum (Emax) battery threshold.
 
**MIN_DT** is a simple MINLP model for task allocation and charging schedule that maximizes only Task Allocation.

**MINLP** is a simple MINLP model for the proposed approach, which persorms task allocation considering the battery degradation cost.

**TCM** is the proposed greedy algorithm.

**NOTE:** If the experiment setup in the .csv files already have a solution, then the program will skip those experiments. To rerun the experiment change the respecive columns of the .csv file to 0 (deleting the respective column will cause the program to find the solution of all experimental setups in the file). 
