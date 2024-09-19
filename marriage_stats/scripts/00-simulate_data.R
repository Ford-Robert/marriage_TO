#### Preamble ####
# Purpose: Simulates
# Author: Robert Ford
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(lubridate)

#### Simulate data ####
set.seed(304)

# Define the range for the dates
start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")



data <-
  tibble(
    date = tibble(date = sample(seq(start_date, end_date, by = "day"), size = 100, replace = TRUE)) ,
    num_of_marrg = rpois(n= 100, lambda = 15)
  )

write_csv(data, "data/raw_data/simulated.csv")
