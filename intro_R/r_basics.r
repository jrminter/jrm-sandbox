# Math

3 + 3

# Base R Functions + objects

x <- 3 + 5
x

y <- c(1, 2, 3, 4, 5)

seq(0, 10, by = 2)

# Custom Functions

add_pi <- function(x){
  x + 3.14
}

add_pi(3)

# Libraries + functions

library(ggplot2)

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(x = "Horsepower",
       y = " Miles per Gallon (MPG)",
       title = "Fuel efficiency decreases as Displacement increases")


# Tidyverse 

library(tidyverse)

# dplyr + tidyr - data cleaning and transformation
# ggplot2 - plots

# The "%>%" (aka the pipe)

df_cars <- as_tibble(mtcars)

df_cars

small_df <- df_cars %>% 
  mutate(cyl = factor(cyl)) %>% 
  select(mpg, cyl, disp, hp)

small_df

View(small_df)

small_df %>% 
  ggplot(aes(x = cyl, y = mpg, color = cyl)) +
  geom_boxplot() +
  geom_jitter()
  


