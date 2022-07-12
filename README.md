# Towards-High-Quality-Battery-Life-for-Autonomous-Mobile-Robot-Fleets
TCM, a Task allocation and Charging Manager for AMR fleets. TCM allocates objective tasks to AMRs and schedules their charging times at the available charging stations for minimized task downtime and maximized AMR batteries’ quality of life. We formulate the TCM problem as an MINLP problem and propose a polynomial-time multi-period TCM greedy algorithm that periodically adapts its decisions for high robustness to energy modeling errors. We experimen- tally show that, compared to the MINLP implementation in Gurobi solver, the designed algorithm provides solutions with a performance ratio of 1.15 at a fraction of the execution time. Furthermore, compared to representative baselines that only focus on task downtime, TCM achieves similar task allocation results while providing much higher battery quality of life.