# Making region categorical again

library(tidyverse)
data_m = data %>% mutate(region = case_when(
  if(region_brestskaya == 1 ~ "brestskaya",
  region_gomelskaya == 1 ~ "gomelskaya",
  region_minsk == 1 ~ "minsk",
  region_minskaya == 1 ~ "minskaya",
  region_mogievskaya == 1 ~ "mogilevskaya",
  region_no_region== 1 ~ "noregion",
  region_vitebskaya == 1  ~ "vitebskaya"
  ))

