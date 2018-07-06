---
title: Interview with Elizaveta Semenova
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




> *I think there is a lot of power in it in Bayesian statistics. The problem is the heavy entrance threshold. So I am always very happy to talk about the benefits of Bayesian statistics and show how easy and simple a model can look like.*



In past April, **Elizaveta Semenova**  [<i class="fab fa-twitter"></i>](https://twitter.com/liza_p_semenova)[<i class="far fa-address-card"></i>](https://www.swisstph.ch/en/staff/profile/people/elizaveta-semenova/) gave an introduction to Bayesian inference in R, using [Stan](http://mc-stan.org/) at our **third meetup**. In the meantime we had the chance to chat with her about her background and current work. 



<a href="https://github.com/rladies/meetup-presentations_lausanne/tree/master/20180413_bayesian/elizavetasemenova-bayesian-stan"><img src="/files/img_slides.png" alt="Slides" height="70" /></a>


<img src="files/2018-04-13-bayesian/20180413_123143.jpg" alt="-" height="300" />


#### R-Ladies Lausanne: Can you tell us about the work that you do?

<u>Elizaveta Semenova</u>: Currently I am doing a PhD in Epidemiology and Biostatistics at the [Swiss Tropical Institute of Public Health]( https://www.swisstph.ch/en/) where I develop novel models for the analysis of surveillance data. 
The disease that I look at specifically is malaria *at this stage of ???*. Historically, there have been cases when malaria came to pretty low levels but once efforts were reduced those countries have been in resurgence. The question is: What do you still need to do to eradicate it? This is not a trivial question. And so my task is to provide some solid scientific answers to that based on statistical modelling. 

#### RLL: From what countries do you get data?

<u>ES</u>: I specifically work with data from Swaziland. This is very special country in terms of malaria. The highest burden of malaria worldwide is in sub-Saharan Africa.
I think 90% or 94% of cases as malaria are all in sub-Saharan Africa. But in sub-Saharan Africa there are countries with very different intensity levels. So some countries have very high malaria burden and incidence, while four countries are approaching elimination. And Swaziland is one of them. It is said to be the closest to elimination in sub-Saharan Africa. 

What is also very special, is that they have established a surveillance system capturing precise coordinates of each case. Meaning, for each malaria case they record the GPS coordinates of the household and the day when it occurred. Looking from our western perception at it, we may say that we have a lot of data of that type but in terms of malaria this is very unique. 
And that's the first country in sub-Saharan Africa where we can get access to this type of data. That is the first time that you can actually analyse this very precise spatial temporal distribution of cases and gain more understanding of that process.


#### RLL: At R-Ladies Lausanne you gave a presentation on Bayesian modelling and Stan. How does this play in to your work?

<u>ES</u>: Stan is my absolute favourite tool for Bayesian inference. All the models I've built during my PhD are centred on Bayesian inference and Bayesian statistics. I've explored a lot of different tools for Bayesian inference with more readily available R packages or other historically popular software. 

But then at the end, once I discovered Stan, I realize that it works best for me. It converges for some very specific likelihoods, which was problematic for the software that I tried before. And with those other software packages I would have never written the main paper that I am writing now. Since Stan has this very peculiar algorithm behind (Hamiltonian Monte Carlo), it is very efficient and very precise in the way it samples. So Stan is something that I think saved my PhD. 

#### RLL: What tools to you use at work?

<u>ES</u>: I use R for any data acquisition, data handling, data processing. For modelling I only use Stan. I prepare the data in R, then send it to Stan, get the output from Stan, and do post-processing in R. 


#### RLL: And where and when did you learn R?

<u>ES</u>: When I started my PhD here in Basel. But I did encounter programming (Pascal) at school, when I was about 15 years old and was very fond of it. Later I got to know Delphi and C++. Back at University, I studied theoretical mathematics. And I did my diploma (an analogy of a masters) in differential equations. During my Bachelor and Diploma, most things were done with just pen and paper. 

#### RLL: What do you appreciate most in R?

<u>ES</u>: I think the simplicity and how easy it is to start. If you use R-Studio as the environment, it is just so simple. If you in general understand how programming works, you do not need to do a lot of installations or set up environments.

You do not need to think ''oh how do I run this command now from terminal?''. And terminals of course terrify beginners. R has a much lower entrance threshold compared to any other tool that is used in statistics. You can start from day one already writing functional programs.

#### RLL: What would you like to learn in R?

<u>ES</u>: I have to confess that I never properly learn ggplot2 in a fluent way. 

#### RLL: You are not alone!

<u>ES</u>: But then, during my PhD I was focussing a lot on modelling and was not keeping up with R development, libraries and productivity tools.

#### RLL: What motivated you to give a talk at R-Ladies Lausanne?

<u>ES</u>: I was very happy to talk about Bayesian's statistics in general. I'm quite passionate about it, but of course I am heavily biased given that this is what I do every day.

I think there is a lot of power in it in Bayesian statistics. The problem is the heavy entrance threshold. So I am always very happy to talk about the benefits of Bayesian statistics and show how easy and simple a model can look like.

In the end, it is not rocket science to make Bayesian inference.

#### RLL: Do you have any free advertisement for a not-for profit organisation?

<u>ES</u>: I am part of [Women++](https://www.womenplusplus.ch/), an non-profit organisation that aims to increase diversity in tech. After a recent [Hackathon](http://hackandlead.com/), we have now a summer break. But updates will be published on [Twitter](https://twitter.com/womenplusplus), Facebook and LinkedIn.

#### RLL: Thank you for taking time and all the best for the remaining time of your PhD!


**Technical note:**
*This interview was recorded by Sina on July 5 and then transcribed. Some text was changed for clarification.*

