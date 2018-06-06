## Prep for meetup #4 of R-Ladies Lausanne
## ----------------------------------------

## R4DS community: http://www.rfordatasci.com/
## tidytuesday on github: https://github.com/rfordatascience/tidytuesday


## load tidyverse
## ---------------
library(tidyverse)

## download data to a data/ folder
## -------------------------------
## 1. download https://github.com/rfordatascience/tidytuesday/blob/master/data/week10_biketown.zip
## 2. download https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/week9_comic_characters.csv


##  week #9
## -------------
## article: https://fivethirtyeight.com/features/women-in-comic-books/
dat.comic <- read_csv("data/week9_comic_characters.csv")

## week #10
## -------------

## article: https://www.biketownpdx.com/system-data
## download data from https://github.com/rfordatascience/tidytuesday/blob/master/data/week10_biketown.zip
dat.bike <- read_csv("data/week10_biketown.csv")


