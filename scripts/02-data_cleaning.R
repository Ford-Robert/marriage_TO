#### Preamble ####
# Purpose: Cleans the raw plane data recorded by
# Author: Robert Ford
# Date: 19 sept 2024 [...UPDATE THIS...]
# Contact: robert.ford@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period, 
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))



cleaned_data |>
  ggplot(aes(x=date, y = marriage_licenses)) +
  geom_point(color = "blue", size =2)+
  labs(
    title = "Marriage Licences Issued Over Time",
    x = "Date",
    y = "Number of Marriage Licences") +
  theme_minimal()
  
#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
