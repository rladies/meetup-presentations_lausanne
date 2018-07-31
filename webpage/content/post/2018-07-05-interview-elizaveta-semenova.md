---
title: Interview with Elizaveta Semenova
author: ''
date: '2018-07-31'
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





> *I think there is a lot of power in the Bayesian approach. The problem is the high entrance threshold due to the computational issues that it poses. So I am always very happy to talk about the benefits of Bayesian statistics and show how simple a model can look like.*



In past April, Elizaveta Semenova  [<i class="fab fa-twitter"></i>](https://twitter.com/liza_p_semenova)[<i class="far fa-address-card"></i>](https://www.swisstph.ch/en/staff/profile/people/elizaveta-semenova/) gave an introduction to Bayesian inference in R, using [Stan](http://mc-stan.org/) at our third meetup. In the meantime we had the chance to chat with her about her background and current work. 



<a href="https://github.com/rladies/meetup-presentations_lausanne/tree/master/20180413_bayesian/elizavetasemenova-bayesian-stan"><img src="/files/img_slides.png" alt="Slides" height="70" /></a>



 <figure>
  <img src="/files/2018-04-13-bayesian/Liza1.png" alt="Elizaveta" height="300" />
  <figcaption>*Elizaveta speaking at the <a href="https://www.appliedmldays.com/workshop_sessions/machine-learning-for-news-theory-applications-and-visualisation-in-python.1">AMLD 2018</a>.*</figcaption>
</figure> 




#### R-Ladies Lausanne: Can you tell us about the work that you do?

<u>Elizaveta Semenova</u>: Currently I am doing a PhD in Epidemiology and Biostatistics at the [Swiss Tropical Institute of Public Health]( https://www.swisstph.ch/en/) where I develop novel models for the analysis of surveillance data. 
To be more precise, I study malaria at elimination stage. Historically, there have been cases when malaria came to pretty low levels in some countries but once the efforts were reduced those countries saw resurgence. The question is: what does one need to do, when malaria reaches the elimination stage, to eradicate it? My task is to provide a scientific answer to that, based on statistical modelling. 

#### RLL: From what countries do you get data?

<u>ES</u>: I, specifically, work with the data from Swaziland. This is a special country in the context of malaria. The highest burden of malaria worldwide is in sub-Saharan Africa. While some of the countries there have very high malaria burden and incidence, there are four countries, approaching elimination. And Swaziland is one of them. It is said to be the closest to elimination in the region.

What is also very special, is that they have established a surveillance system capturing precise coordinates of each case. Meaning, for each malaria case they record the GPS coordinates of the household and the day when it occurred. From our western point of view, there may seem to be nothing special in this kind of data, but in terms of malaria this is very unique.  And that's the first country in sub-Saharan Africa where we can get access to this type of data. That is the first time that you can actually analyse this very precise spatio-temporal distribution of cases and gain more understanding of the process.


#### RLL: At R-Ladies Lausanne you gave a presentation on Bayesian modelling and Stan. How does this play in to your work?

<u>ES</u>: Stan is my absolute favourite tool for Bayesian inference. All the models, which will end up being part of my PhD, are formulated in the Bayesian framework. I have explored various tools for Bayesian inference, such as more readily available R packages and popular software. 

But then, at the end, once I discovered Stan, I realised that it works best for me. It converges well for some very specific likelihoods, which was problematic in the software that I tried before. And using that other software I would have never be able to write my main PhD paper, which I am finishing now. Stan has this very peculiar sampling algorithm behind it (Hamiltonian Monte Carlo), which makes it very efficient. So Stan is something that, I think, has rescued my PhD. 

#### RLL: What tools to you use at work?

<u>ES</u>: I use R for any data acquisition, data handling, data processing. For modelling I only use Stan. I prepare the data in R, then send it to Stan, get the output from Stan, and do post-processing in R. 


#### RLL: And where and when did you learn R?

<u>ES</u>: When I started my PhD here in Basel. But I did encounter programming (Pascal) at school, when I was about 15 years old and was very fond of it. Later I got to know Delphi and C++. Back at University, I studied theoretical mathematics. And I did my diploma (an analogy of a masters) in differential equations. During my Bachelor and Diploma, most things were done with just pen and paper. 

#### RLL: What do you appreciate most in R?

<u>ES</u>: I think the simplicity and how easy it is to start. If you use R-Studio as the environment, it is just so simple. If you understand in general how programming works, you do not need to do a lot of installations or set up environments.

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
