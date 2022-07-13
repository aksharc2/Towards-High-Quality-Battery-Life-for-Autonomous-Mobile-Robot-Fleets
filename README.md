**T**ask and **C**harging schedule **M**anager is a combined task and charging scheduler.

This repository contains the proposed TCM algorithm and the MINLP solver. 


Following are the important packages that are required to execute the TCM.py and MINLP.py files:
|package | pip installation command | guide lines |
| ------------- | ------------- | ------------- |
| gurobipy | `python -m pip install gurobipy`   | [Gurobi](https://www.gurobi.com/documentation/9.5/quickstart_linux/cs_using_pip_to_install_gr.html) |
| numpy  | `pip install numpy`  | https://numpy.org/install/  |
| matplotlib | `python -m pip install -U matplotlib`| https://matplotlib.org/stable/users/installing/index.html |
| time | `pip install times`| https://pypi.org/project/times/ |
| pandas | `pip install pandas`| https://pypi.org/project/times/ |
| math | `pip install python-math` |https://pypi.org/project/python-math/ |


To save the output of the TCM algorithm and MINLP in a CSV file set `File_Execution = True`, and the Experiment_Results.csv **must** be in the same folder. When the `File_Execution = False`, the program reads the initial conditions from `TCM_Optimizer_Initial_Conditions()` and `TCM_Algorithm_Initial_Conditions()` function in MINLP and TCM, respectively. 

The Experiment_Results.csv contains all the variable that can be changed, and the result from the TCM algorithm and MINLP will get saved in the .csv file. Each row in the Experiment_Results.csv is a different experiment setup. When the MINLP.py saves the results for the given experiment the `Opt_execution` is than changed to 1, simillarly, when TCM saves the result then `Alg_execution` is changed to 1.
