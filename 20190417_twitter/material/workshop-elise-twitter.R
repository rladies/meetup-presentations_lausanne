# Author : Elise Tancoigne - elise.tancoigne@unige.ch
# License: CC-by 4.0 (https://creativecommons.org/licenses/by/4.0/)
# April 16th, 2019

# this R script is an introduction to the packages rtweet and graphTweets 
install.packages("rtweet")
install.packages("graphTweets")

library(rtweet)

##################################################
###### CREATE A CONNECTION WITH THE TWITTER API

# get your consumerKey and consumerSecret accesses. 
# read how to do it on https://rtweet.info/articles/auth.html

consumerKey <- "the_consumer_key_provided_by_twitter"
consumerSecret <- "the_consumer_secret_provided_by_twitter"

token <- create_token(app = "your_application_name", consumerKey, consumerSecret)

##################################################
###### PLAY WITH THE FUNCTIONS

# check rate limitations
rate_limit(token, query="users/search")
rate_limit(token, query="search/tweets")
rate_limit(token, query="statuses/user_timeline")
# a list of twitter functions can be found at: https://developer.twitter.com/en/docs/api-reference-index


##################################################
###### GET TWEETS

# get the 200 last tweets from @unil
get_timeline("@unil")
# --> did you succeed? otherwise, see
?get_timeline
# --> correct line #35 so as to get the 200 last tweets

# display the tweets
View(get_timeline("@unil"))
# --> have a look at the variables that are available.
# --> did you reach the API limit?

# assign the tweets to an object.
unil_timeline <- get_timeline("@unil", n=3200)
# --> how many tweets did you get? Do you think you got all of them?

# plot their frequencies
ts_plot(unil_timeline, by = "days") # plot can be mande by secs, mins, hours, days, weeks, months, years

# search tweets through keywords
?search_tweets
a <- search_tweets("honey almonds", n=18000)
b <- search_tweets("honey AND almonds", n=18000)
c <- search_tweets('"honey almonds"', n=18000)
d <- search_tweets("honey OR almonds", n=18000)
View(d)
# --> what are the differences between the 4 expressions?

# filter the tweets: keep those that mention @24heuresch
unil_tl_filt <- unil_timeline[grep("@24heuresch", unil_timeline$text),]
# filter the tweets: keep those that mention "valais" or "vevey"
grep("valais|vevey", unil_timeline$text)
View(unil_timeline[325, "text"])
unil_tl_filt <- unil_timeline[grep("valais|vevey", unil_timeline$text), ]
# see regular expressions on https://www.r-bloggers.com/regular-expressions-in-r-vs-rstudio/

# retrieve tweets with the stream API
f <- stream_tweets("@nytimes")
# --> does it retrieve the tweets from @nytimes or the tweets mentioning @nytimes?



##################################################
###### GET FOLLOWERS

unil_followers <- get_followers("@unil")
# --> how many followers did you retrieve? Why?
View(unil_followers)
# --> what kind of information do you have on them?

# get the total number of followers
unil_data <- lookup_users("unil")
View(unil_data)
unil_data$followers_count
# --> how many are they?

# now, retrieve the total list of followers.
unil_followers <- get_followers("@unil", n=75000)

# retrieve data for the followers
unil_foll_data <- lookup_users(unil_followers$user_id[1:1000])

# find the number of users that fill their location information.
length(which(unil_foll_data$location!=""))
# --> calculate their proportion. Is this a reliable field?


##################################################
###### BUILD THE NETWORK OF CITATIONS WITH graphTweets
# (who cites who within a tweet)

library(graphTweets)

edges <- gt_co_edges(unil_timeline, col="hashtags")
View(edges$edges)
edges <- gt_co_edges(unil_timeline, col="mentions_screen_name")
View(edges$edges)
#  --> what format is the network?
# sort the accounts according to their frequency of citation
sort(table(c(edges$edges$source, edges$edges$target)), decreasing = T)[1:10]
# --> who is the most cited by @unil? Why?


# visualize the graph
isntall.packages("igraph")
library(igraph)
# igraph handles "graph" objects. Create a graph object
g <- graph.data.frame(edges$edges, directed=TRUE)
# plot the graph
plot(g)
# --> is this useful?

# reduce the number of nodes displayed according to a chosen criteria 
# (here: hashtags containing "politique")
g <- graph.data.frame(edges$edges[c(grep("politique", edges$edges$target, ignore.case = T)),], 
                      directed=TRUE)
plot(g)

# export network data to Gephi software for easy visualizations
write_graph(g, file="my_graph.graphml", format = "graphml")

#### 
