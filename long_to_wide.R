dd <- data.frame(time = c("hour0", "hour3", "hour6", "hour9", "hour12", "hour15", "hour18", "hour21"),
                 day = rep(1,8),
                 year = rep(2017, 8),
                 air_temp = c(22, 11, 22, 11, 14, 15, 18, 21),
                 water_temp = c(33, 44, 33, 44, 34, 31, 28, 23),
                 phi_at = runif(8),
                 phi_sn = runif(8),
                 phi_ws = runif(8),
                 phi_e = runif(8),
                 phi_c = runif(8),
                 phi_dz = runif(8),
                 heat = c(-99, -99, rep(12,6))
                 )
dd

library(dplyr)
library(tidyr)
new = gather(dd, variable, value, air_temp, water_temp, phi_at, phi_sn, phi_ws, phi_e, phi_c, phi_dz, heat) %>%
  unite(var, variable, time) %>% 
  spread(var, value)

new
