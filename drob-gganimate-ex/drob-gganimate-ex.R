# Code behind this tweet: https://twitter.com/drob/status/1100182329350336513
# By David Robinson
# Run in RStudio by selecting all and pressing "Run"
library(tidyverse)
library(gganimate)

# Setup
options(gganimate.nframes = 200)
set.seed(2019)

simulation <- tibble(roll = 1:10000) %>%
  mutate(result = sample(6, n(), replace = TRUE)) %>%
  crossing(nrolls = seq(10, 10000, 10)) %>%
  filter(roll <= nrolls) %>%
  count(nrolls, result)

ggplot(simulation, aes(result, n, fill = factor(result))) +
  geom_col(position = "identity", show.legend = FALSE) +
  transition_manual(nrolls) +
  view_follow() +
  scale_x_continuous(breaks = 1:6) +
  labs(y = "# of rolls with this result",
       title = "Distribution of results after { current_frame } rolls of a six-sided die")

