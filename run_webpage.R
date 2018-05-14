## Compile Webpage and push it to rladieslausanne.github.io
## =========================================================

## installation here: https://bookdown.org/yihui/blogdown/installation.html
#install.packages("blogdown")
## Or, install from GitHub
#if (!requireNamespace("devtools")) install.packages("devtools")
#devtools::install_github("rstudio/blogdown")
#blogdown::install_hugo()

library(blogdown)
## >> creates new website, but because we have ours already, don't do that :-) 
## blogdown::new_site(theme = "yihui/hugo-xmin")

## 1) if you want a new post:
#new_post(title="A first post using blogdown", kind = ".Rmd")

## 2) update website
## ---------------------------
blogdown::hugo_build()

## 3) go to a terminal
## ---------------------------

## a) commit changes to github 
## cd /Users/admin/Documents/Projects/rladies/rladieslausanne.github.io
## git add -f *
## git commit -a -m 'your commit message'
## git push

## b) commit changes of webpage folder
## go to terminal
## cd /Users/admin/Documents/Projects/rladies/meetup-presentations_lausanne/webpage
## git add -f *
## git commit -a -m 'your commit message'
## git push

