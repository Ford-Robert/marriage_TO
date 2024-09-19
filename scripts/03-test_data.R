#### Preamble ####
# Purpose: Sanity Test of Simulated Data
# Author: Robert Ford
# Date: 19 September 2024
# Contact: robert.ford@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$num_of_marrg |> min() <= 0

# Test for NA
all(is.na(data$num_of_marrg))
