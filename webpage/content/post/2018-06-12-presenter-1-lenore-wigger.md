---
title: 'Interview with Lenore Wigger (presenter #1)'
author: ''
date: '2018-06-12'
slug: presenter-1-lenore-wigger
categories:
  - interview
tags:
  - bioinformatics
  - ggplot2
draft: true
---




> *The learning process is always two fold. On the one side it's really just learning about statistical concepts and methods, but then on the other hand it's also about to program the analysis in R.*



At our very first meetup, Leonore Wigger [<i class="far fa-address-card"></i>](https://applicationspub.unil.ch/interpub/noauth/php/Un/UnPers.php?PerNum=1113974&LanCode=37) gave a short presentation on how to combine multiple ggplot plots into one page. 



<a href="https://github.com/rladies/meetup-presentations_lausanne/raw/master/20180201_kickoff/2018-02-01-lightning_multipage_pdf_lw.pdf"><img src="/files/img_slides.png" alt="Slides" height="70" /></a>


<img src="/files/2018-02-01-kickoff/DSC02007 (1).png" alt="-" height="300" />


#### R-Ladies Lausanne: What is the work that you do?

<u>Leonore Wigger</u>: I work 50% at the [Swiss Institute of Bioinformatics](https://sib.swiss/) and the other 50% I work at the University of Lausanne, at the [Lausanne Genomics technology facility](https://www.unil.ch/gtf/en/home.html), which is a service provider for lab experiments. So my main activities are the statistical analysis of gene expression data and of lipidomics and metabolomics data. For the users of the service platform at the University it is mostly small routine statistical analyses, where after experiments that involve special machines and knowhow, I get the data and do a first analysis. Regarding my work at the Swiss Institute of Bioinformatics, I spend a large part on long term research projects, where I am attributed to multiple projects at the same time.

#### RLL: What do you use R for at work?
<u>LW</u>: All my scripts are in R. I would say it's three things: data processing, statistical tests and graphics. 

#### RLL: You mentioned that you do the statistical analyses in the Lausanne Genome Technology Facility. Do you use automated reporting for that in R? 
<u>LW</u>: I use knitr and Rmarkdown, but it's not completely automated. I have standard reports and from that I generate a final report by removing or adding blocks to tailor the report. 

#### RLL: Where and when did you learn R?
<u>LW</u>: My very first contact with R was during my Master thesis, but I really only used it to produce some boxplots. And then after that, I learned R on the job here. So I started her 7 years ago with my extremely limited knowledge and my boss gave me his examples and his collection of functions to get started.

#### RLL: Did you find it easy to learn R on the job?
<u>LW</u>: It was ok. It was not the first programming language that I learned. And the analyses were all very standardized. So actually that type of work was good to slowly get into R. For a long time, my knowledge in R stayed pretty limited, because I never really had time to learn more complex things. And it's only during the last one or two years that I really had the opportunity to venture a little bit further and go and look for things that really expand my R vocabulary a bit.

#### RLL: What are your favorite R tools?
<u>LW</u>: 
The one I use most often for gene expression analysis is the bioconductor package called [limma](https://bioconductor.org/packages/release/bioc/html/limma.html). This is my main tool, it’s the one I “grew up with”.

For the same purpose (analysis of gene expression, but when it's on RNA seq data) I use [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html). And the reason why I mention it, is that, I find that they do an excellent job with the vignettes and documentation, and they update it constantly as well. So every time I check, there is something new and useful. 


Lastly I’d like to mention two packages that I used a lot recently and that make my work easier when I am using statistical functions from R base. 

One of them is the package broom and out of this one I especially like the function tidy. Small and simple, but extremely useful. Tidy is a function where you can seed the output of something like `lm()` into, and then it will take this output and turn it into a dataframe. The other one that I currently like to use is multcomp and especially the function [glht]( https://www.rdocumentation.org/packages/multcomp/versions/1.4-7/topics/glht) which is a nice tool for extracting contrasts from linear models.

#### RLL: What resources do you use when you get stuck? 
<u>LW</u>: Of course I use R-help, Stackoverflow and I google. 

But I think there are a few more things to say. Sometimes I ask my coworkers that I see them doing. And I think this is super relevant and important. And it goes both ways – they ask me too. 

It happened about twice that I happened to post a question to a forum. And these questions were about the usage and behavior of very specific functions in very specific packages. And each time I was hoping very much that the author of the package would respond to me and in both cases they did. They gave me the perfect answer that I was looking for. This was very cool. 

A few times I have also used books. One time I was actually using a package for a bigger project, and after a while I bought the book specific for this package.

#### RLL: What would you like to learn in R?
<u>LW</u>: My main battles are always how to specify statistical models correctly and how to read and interpret the output correctly. So I am using linear and logistic regression models, plus linear mixed effect models. Every time I use them I still have plenty of open questions and my aspiration is to get more proficient each time.

So the next thing I am planning to get more into generalized linear mixed models. The learning process is always two fold. On the one side it's really just learning about statistical concepts and methods, but then on the other hand it's also about to program the analysis in R. 

#### RLL: What are tools that keep your day smooth?
<u>LW</u>: For programming in R, I use Rstudio. I write most of my code in R markdown documents. Sometimes I make reports with knitr out of them, but not always. I also use Rstudio’s integrated access to git. I much appreciate how simple it is to use. I work on a windows machine and would also like to say a word about a tool that has nothing to do with R. It is MobaXterm. This is a terminal for windows. The two functionalities that I use: It gives me many linux commands on my Windows machine and it allows me to connect to remote machines via SSH.


#### RLL: What motivated you to give a talk at R-Ladies Lausanne?
<u>LW</u>: Sharvenaz asked me if I wanted to give a short talk at the first R-ladies meeting. I took a long time to respond to her request. In the end, my principal motivation to do it was to show my appreciation for this new initiative.

#### RLL: ...and we appreciated it! Thank you! And thank you for taking time to do this interview!
<u>LW</u>: ______.



#### Technical note:
*This is a transcription of a recorded interview between Leonore and Sina. Additionally, Lenore provided the answers to the questions in written form. Some text was changed for clarification.*
