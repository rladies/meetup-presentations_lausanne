## Prep for meetup #4 of R-Ladies Lausanne
## ----------------------------------------

## some reading
## ----------------
## R4DS community: http://www.rfordatasci.com/
## tidytuesday on github: https://github.com/rfordatascience/tidytuesday


## load tidyverse
## ---------------
if(!require(tidyverse))
    install.packages("tidyverse")
library(tidyverse)


## download data to a data/ folder
## (this can be automated in R too)
## -------------------------------
## 1. Right next to this R file, create a folder called "data"
## 1. download https://github.com/rfordatascience/tidytuesday/blob/master/data/week10_biketown.zip
## 2. unzip zip folder
## 3. download https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/week9_comic_characters.csv
## 4. copy both csv files in the data folder. 


##  WEEK #9 COMIC CHARACTERS
## -------------

## article: https://fivethirtyeight.com/features/women-in-comic-books/
dat.comic <- read_csv("data/week9_comic_characters.csv")

## WEEK #10 BIKETOWN
## -------------

## article: https://www.biketownpdx.com/system-data
dat.bike <- read_csv("data/week10_biketown.csv")


