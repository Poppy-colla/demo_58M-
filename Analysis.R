# Create a random data set foe demo 
# Main data set 

df <- data.frame(x = rnorm(50, 16, 4), group = rep(c("group1", "group2"), each = 25))

# Load tidyverse

library(tidyverse)

# Summerising the data 

df %>% group_by(group) %>% summarise(mean = mean(x), n = length(n), sdev = sd(x))

# A tibble: 2 x 4
# group   mean     n    sd
# <fct>  <dbl> <int> <dbl>
#  1 group1  15.7     1  4.77
#  2 group2  15.7     1  4.62


# Plotting the data

df %>% ggplot(aes(x = group, y = x))+
  geom_boxplot()








