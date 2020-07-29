# load libraries
library(tidyverse)
library(dslabs)
library(Lahman)

# load themes
ds_theme_set()

# lets look at a visualisation of two variables: home runs and runs using a scatter plot
Teams %>%
  filter(yearID %in% 1961:2001) %>%
  mutate(HR_per_game = HR/G,
         R_per_game = R/G) %>%
  ggplot(aes(HR_per_game, R_per_game)) +
  geom_point(alpha = 0.5)

# now lets examine the relationship between stolen bases and wins
Teams %>%
  filter(yearID %in% 1961:2001) %>%
  mutate(SB_per_game = SB/G,
         R_per_game = R/G) %>%
  ggplot(aes(SB_per_game, R_per_game)) +
  geom_point(alpha = 0.5)

# finally lets examine the relationship between bases on balls and runs
Teams %>%
  filter(yearID %in% 1961:2001) %>%
  mutate(BB_per_game = BB/G,
         R_per_game = R/G) %>%
  ggplot(aes(BB_per_game, R_per_game)) +
  geom_point(alpha = 0.5)

# we know by definition that home runs cause runs
# it could be that home runs also cause the bases on balls
# it might appear that a base on ball is causing runs when in fact, it's home runs that are causing both
# this is called confounding - which we will study later

