---
title: Interview with Elizaveta Semenova (presenter #3)
author: ''
date: '2018-07-05'
slug: interview-elizaveta-semenova
categories: 
  - interview
tags:
  - stan
  - bayesian
  - biostatistics
  - interview
draft: true
---




> *...*



Elizaveta Semenova  [<i class="fab fa-twitter"></i>](https://twitter.com/liza_p_semenova)[<i class="far fa-address-card"></i>](https://www.swisstph.ch/en/staff/profile/people/elizaveta-semenova/) gave an introduction to Stan and R. 



<a href="https://github.com/rladies/meetup-presentations_lausanne/tree/master/20180413_bayesian/elizavetasemenova-bayesian-stan"><img src="/files/img_slides.png" alt="Slides" height="70" /></a>


<img src="files/2018-04-13-bayesian/20180413_123143.jpg" alt="-" height="300" />


#### R-Ladies Lausanne: Can you tell us about the work that you do?

<u>Elizaveta Semenova</u>: Currently I am doing a PhD in Epidemiology and Biostatistics at the [Swiss Tropical Institute of Public Health]( https://www.swisstph.ch/en/) where I develop novel models for analysis of surveillance data. What I look at specifically is malaria at this stage of ???.
There is a lot you need nowadays for new to analyse this type of data because it is very novel and historically there have been cases when malaria came to pretty low levels but once efforts were reduced those countries helped been in resurgence. And also there is big question when malaria comes to low levels. What do you still need to do to absolutely knock it out to eradicate it. This is not a trivial question.
So and my task is to provide some solid scientific answers to that based on statistical modelling. 

#### RLL: So you get data from different countermoves select from other countries what was with them?

<u>ES</u>: So I specifically work with Swaziland because this is very special country in terms of malaria.
So the highest burden of malaria is in the world is in sub-Saharan Africa.
I think 90 percent or 94 percent of cases as malaria are all in sub-Saharan Africa . But in sub-Saharan Africa there are countries with very different and intensity levels. So some countries have very high malaria burden and incidence, while four countries are approaching elimination. And Swaziland is one of them and it is said to be the closest to elimination in sub-Saharan Africa. And what is also very special about it is that they have established a very special surveillance system capturing precise coordinates of each case. So geospatial and timestamped data for each malaria case they record the GPS coordinates of the household and that day when it occurred. Looking from our western perception at it, we may say that we have a lot of data of that type but in terms of malaria this is very unique. 
And that's the first country in sub-Saharan Africa where we can get access to this data. That is the first time that you can actually analyse this very precise spatial temporal distribution of cases and gain more understanding of that process.

#### RLL: It really reminds me off the but it's always you know the fountains. Was it snow. John Snow

<u>ES</u>: Yes. Cholera, absolutely., I am the services like there's the Jon Snow of today.

#### RLL: So you give a presentation on certain Bayesian modules. How does this play in to your work?

<u>ES</u>: So Stan is my absolute favourite tool for Bayesian inference. So all the models I've built here in my PhD it is all in Bayesian inference and Bayesian statistics.
So I've explored a lot of different tools for Bayesian inference with more readily available R packages or other historically popular software. But then at the end once I discovered STAN I realize that it works for me best, because it was converges for some very specific likelihood, which was of very problematic for the softwares that I tried before.

So with those packages I would have never written this main paper that I am writing now. Since Stan has this very peculiar alog behind – Hamiltonian-Montecarlo – very efficient and very precise in the way it samples. So Stan something that I think saved my PHD  and so this is my favorite Bayesian modelling tool.

#### RLL: What tools to you use at work?

<u>ES</u>: PhD I only use R, for any data squi, handling, processing. Modelling, only use STAN. Prep data in R, then send it to STAN, then get the output from stan, do postprocessing in R. 

#### RLL: What is your background?

<u>ES</u>: <u>ES</u>: I studied theoretical mathematics. And I did my diploma in analogy of masters to diploma in differential equations.

#### RLL: Where and when did you learn R?

<u>ES</u>: When I when I started my PhD here in Basel. Because for my studies most things are done with just pen and paper. But I did encounter pgoramming in school, when I was about 14 years old and was very fond of it. I got to know Pascal. And later Delfi and C++.

#### RLL: And so what do you appreciate most in R?

<u>ES</u>: I think that simplicity and how easy it is to start. If you use R-Stuido as the environment, it is just so simple, like if you in general understand how programming works, you do not need to do a lot of installations or set up environments like all this troubles with python for instance. 

You do not need to think oh how do I run this command now from terminal or not. And terminal of course terrifies that beginners. IAnd it has the lowest entrance threshold compared to any other tool that is used in statistics.

You can start from day one already writing very functional programs.

#### RLL: What would you like to learn in R?

<u>ES</u>: Yeah. I mean I'm very ashamed to confess but I never properly learn ggplot2 in a fluent way. But during my PhD I was focussing a lot on modelling and less on and was not keeping up with R dev, libraries and productivity tools.

#### RLL: What motivated you to give a talk at R-Ladies Lausanne?

<u>ES</u>: I was very glad to talk about Basia's statistics in general. I'm quite passionate about it I can say I am heavily biased because this is what I do every day.

So we do not do any frequenters aanlysis and I think there is a lot of power in it in Bayesian stats. 
But of course there is a very heavy entrance threshold because it is much harder to start with it as opposed to classical statistics. So I am always very happy to talk about the benefits of Bayesian statistics and how can you make it easy to work. 

So I was very happy to talk about stan as exactly one of those tools. That can show you how easy and simple a model can look like.

So it is not rocket science to make Bayesian inference.

#### RLL: Do you have any free advertisement for a not-for profit organisation or resource?

<u>ES</u>: I am part of [Women++](https://www.womenplusplus.ch/), an non-profit organization that aims to increase diversity in tech. After a recent [Hackathon](http://hackandlead.com/), we have now a summer break. But updates will be published on [Twitter](https://twitter.com/womenplusplus), Facebook and LinkedIn.

#### RLL: Thank you for taking time and all the best for the remaining time of your PhD!


**Technical note:**
*This interview was recorded by Sina on July 5 and then transcribed. Some text was changed for clarification.*

