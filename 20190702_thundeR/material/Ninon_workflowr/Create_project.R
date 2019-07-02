##### workflowr : organized + reproducible + shareable data science in R ####

setwd("~/Documents/Ninon/RLadies/Presentation_workflowr")
library("workflowr")



#### Configure Git, for version control (needed once per computer)
# wflow_git_config(user.name = "Ninon M.", 
#                  user.email = "ninon.mounier@rladies.org")
git2r::config()


#### Start a new workflowr project
wflow_start("my_first_project")
# this automatically:
#    - creates a new folder and all the subdirectories
#    - changes the working directory to this new folder
#    - initiate a git repository and do a first commit

list.files()
# subfolders are: analysis / code / data / docs / output 
#                 (only analysis/ and docs/ are required)
# .yml file - contains some workflowr options (seed, knit dir)
# README - can be modified
# .gitignore - can be customised
# .Rproj (used by workflowr, even if not using Rstudio) / .Rprofile


#### Generate the website

wflow_status() 
# 3 .Rmd files unpublished
wflow_build() # create .html files from .Rmd files in analysis/

# Note:
# build() only builds R Markdown files that have been modified 
# more recently than their corresponding HTML files. 
# Thus if you run it again, no files are built
wflow_build()

wflow_status() 
# The .Rmd files are still unpublished, 
# so far we have only created the .html files

# build() can be used to preview pages/website before pusblishing it
# view() displays the index page and allows navigating on the static 
# version of the website, even if not published yet
wflow_view()
# -> check the workflowr checks + version control history


# publish() will use a list of files (.Rmd + others) that needs 
# to be commited, will create the .html files from the .Rmd files 
# and will commit everything
wflow_publish(files = c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/license.Rmd"),
              message = "Publish the initial files for myproject")
# Note, build() will re-create the .html files in independent R sessions, to
# ensure reproducibility.

wflow_status() 
# Now files are published, and everything is up to date, yeah! 


# try to modify index page
wflow_open("analysis/index.Rmd")

wflow_status() 
# One file modified, we should publish it again


# you can also use this if you want to publish all .Rmd files
wflow_publish(c("analysis/*.Rmd"),
              "New index file")
# -> see how version control history has changed (only for index)



#### Deploy the website

# we are using github for this...
wflow_use_github(username = "n-mounier", 
                 repository = "workflowr-my_first_project") 
                            # create the repository

# to push the local changes to github repository
wflow_git_push() 
# needs to be done after publishing the website, to make sure the 
# most recent version is online

# Now that the code is on github -> create website
# need to tell GitHub that the files in docs/ should be published 
# as a website. 
# Settings -> GitHub Pages and choose “master branch docs/ folder” 
# as the source. 
# URL : myname.github.io/myproject/
# n-mounier.github.io/workflowr-my_first_project/


#### Add a totally new analysis file

wflow_open("analysis/first-analysis.Rmd")
# -> modify it and save it

wflow_status() # Our file is "scratch", not tracked by git
wflow_build() # -> preview
# in workflow checks, we can see that we have one red flag 
# because of uncommited changes

wflow_git_commit(c("analysis/first-analysis.Rmd"),
                 "Add first analysis Rmd")
wflow_status() # File committed, tracked, but unpublished

# add link to index
# Click on this [link](first-analysis.html) to see my results.
wflow_open("analysis/index.Rmd")


wflow_publish(c("analysis/first-analysis.Rmd", "analysis/index.Rmd"), 
              # here, we can only add untracked/modified files
              "Add my first analysis")
wflow_git_push()
# look on website
# sessionInfo()



# Change the prediction for out of sample
# see how it affects the website
wflow_open("analysis/first-analysis.Rmd")
# -> modify it and save it

wflow_publish(c("analysis/first-analysis.Rmd"), 
              "Use out-of-sample prediction")
wflow_git_push()

# look on website
# past versions of figures

# in out-of-sample prediction, we create random subsets for 
# training/test

# workflowr automatically deals with seed() to make sure the 
# results are reproducible
wflow_open("analysis/first-analysis.Rmd") # just modify some text
wflow_publish(c("analysis/*.Rmd"), 
              "Check if seed changes")
# we end up with the same table, i.e same training/test samples
