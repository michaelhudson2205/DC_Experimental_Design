library(tidyverse)
library(broom)

data("ToothGrowth")
head(ToothGrowth)

ToothGrowth |> 
  summarise(mean(len),
            median(len),
            sd(len))

t.test(x = ToothGrowth$len, alternative = "two.sided", mu = 18)
