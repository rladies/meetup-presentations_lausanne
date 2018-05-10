#start blogdown#

## installation here: https://bookdown.org/yihui/blogdown/installation.html
#install.packages("blogdown")
## Or, install from GitHub
#if (!requireNamespace("devtools")) install.packages("devtools")
#devtools::install_github("rstudio/blogdown")
#blogdown::install_hugo()

library(blogdown)
#blogdown::new_site(theme = "yihui/hugo-xmin")


## 1) update content, whatever, create new post
#new_post(title="A first post using blogdown", kind = ".Rmd")

## 2) update website
blogdown::hugo_build()

## 3) commit changes to github >> do in terminal
## go to terminal
cd /Users/admin/Documents/Projects/rladies/rladieslausanne.github.io
git add -f *
git commit -a -m 'update'
git push

## 3) commit changes to from hidden folder
## go to terminal
cd /Users/admin/Documents/Projects/rladies/rladies_lausanne_private/webpage
git add -f *
git commit -a -m 'fixed the icons + picture'
git push


