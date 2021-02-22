
ac = read.csv("simulation_output_Feb_2021.csv")
simulated_data = data.frame(time = 6, day = 1, year = 2017, phi_sn = 1200, phi_at = 3, phi_ws = 300, phi_e = 33, T_w_t_1 = 30, phi_c = 40, H_t_1 = 300, phi_net = 300, H_t = 23, T_w_t = 29)
# Add data to the CSV file simulated_data_area.csv

write.table(simulated_data, "simulation_output_Feb_2021.csv", sep = ",", col.names = !file.exists("simulation_output_Feb_2021.csv"), append = T)