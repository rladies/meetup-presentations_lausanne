---
title: 'Interview with Leonore Wigger'
author: ''
date: '2018-07-07'
slug: presenter-1-leonore-wigger
categories:
  - interview
tags:
  - bioinformatics
  - ggplot2
  - interview
draft: false
---




> *The learning process is always two fold. On the one side it's really just learning about statistical concepts and methods, but then on the other hand it's also about to program the analysis in R.*



At our very **first meetup**, **Leonore Wigger** [<i class="far fa-address-card"></i>](https://applicationspub.unil.ch/interpub/noauth/php/Un/UnPers.php?PerNum=1113974&LanCode=37) gave a short presentation on how to arrange multiple ggplot plots onto multipage PDFs.



<a href="https://github.com/rladies/meetup-presentations_lausanne/raw/master/20180201_kickoff/2018-02-01-lightning_multipage_pdf_lw.pdf"><img src="/files/img_slides.png" alt="Slides" height="70" /></a>


<img src="/files/2018-02-01-kickoff/DSC02007 (1).png" alt="-" height="300" />


#### R-Ladies Lausanne: What is the work that you do?

<u>Leonore Wigger</u>: I work 50% at the [Swiss Institute of Bioinformatics](https://sib.swiss/) and the other 50% at the University of Lausanne, at the [Lausanne Genomic Technologies Facility](https://www.unil.ch/gtf/en/home.html), which is a service provider for RNA and DNA analysis. My main activities are the statistical analysis of gene expression data and of lipidomics and metabolomics data. For the users of the service platform at the University I do mostly small routine statistical analyses of gene expression data. The facility has a wet lab, where experiments that involve special machines and knowhow are performed. I get the data from these experiments and do a first analysis. At the Swiss Institute of Bioinformatics, I spend most of my time on long term research projects. I am assigned to multiple projects at the same time. Currently, most of this work is related to diabetes. I am involved in a couple of very large European collaborations between several academic institutions and private companies. We are trying to find lipids or other molecules circulating in the blood that can serve as biomarkers for diabetes.

#### RLL: What do you use R for at work?
<u>LW</u>: All my scripts are in R. I use R for three things: data processing, statistical tests and graphics. 

#### RLL: You mentioned that you do the statistical analyses in the Lausanne Genomic Technologies Facility. Do you use automated reporting for that in R? 
<u>LW</u>: I use knitr and R Markdown, but it’s not completely automated. I have standard building blocks for my reports, and from these I generate a final report by removing or adding blocks to tailor the report.

#### RLL: Where and when did you learn R?
<u>LW</u>: My very first contact with R was during my Master thesis, but I really only used it to produce some boxplots. After that, I learned R on the job here. I started here 7 years ago with my extremely limited knowledge and my boss gave me his examples and his collection of functions to get started.

#### RLL: Did you find it easy to learn R on the job?
<u>LW</u>: It was ok. It was not the first programming language that I learned. And the analyses were all very standardized. So actually that type of work was good to slowly get into R. For a long time, my knowledge of R stayed pretty limited because I never really took the time to learn more complex things. Only during the last one or two years did I begin to venture further and to look for things that expanded my R vocabulary.

#### RLL: What are your favorite R tools?
<u>LW</u>: The one I use most often for gene expression analysis is the Bioconductor package called [limma](https://bioconductor.org/packages/release/bioc/html/limma.html). This is my main tool. It’s the one I “grew up with”.

For the same purpose (analysis of gene expression) I use [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html). I use it much less often than limma, but the reason why I mention it as a favorite is that they do an excellent job with the vignettes and documentation, and they update it constantly as well. So every time I check, there is something new and useful.


Lastly I’d like to mention two packages that I used a lot recently and that make my work easier when I am using statistical functions from R base. 

One of them is the package broom, and out of this one I especially like the function tidy. Small and simple, but extremely useful. Tidy is a function that takes the output of something like `lm()` and turns it into a data frame. The other one that I currently like to use is multcomp, especially the function [glht]( https://www.rdocumentation.org/packages/multcomp/versions/1.4-7/topics/glht), which is a nice tool for extracting contrasts from linear models.

#### RLL: What resources do you use when you get stuck? 
<u>LW</u>: Of course I use R-help, Stack Overflow and Google. 

But there are a few more things to say. Sometimes I ask my coworkers about things that I see them do. This is super relevant and important. And it goes both ways – they ask me too.

Twice I posted a question to a forum. These questions were about the usage and behavior of very specific functions in very specific packages. Each time I was hoping very much that the author of the package would respond to me, and in both cases they did. They gave me the perfect answer that I was looking for. This was very cool.

A few times I have also used books. One time I was using a package extensively for a bigger project, and after a while I bought the book specifically about this package.


#### RLL: What would you like to learn in R?
<u>LW</u>: My main battles are always how to specify statistical models correctly and how to read and interpret the output correctly. I am using linear and logistic regression models, and sometimes linear mixed effect models. Every time I use them I still have plenty of open questions and my aspiration is to get more proficient.

The next thing I am planning to get more into are generalized linear mixed models. The learning process is always two-fold. On the one hand it’s about statistical concepts and methods independently of any programming language, but on the other hand it’s also about how to program the analysis in R.


#### RLL: What are tools that keep your day smooth?
<u>LW</u>: For programming in R, I use RStudio. I write most of my code in R Markdown documents. Sometimes I make reports with knitr out of them, but not always. I also use RStudio’s integrated access to git. I much appreciate how simple it is to use.

I work on a Windows machine and would also like to say a word about a tool that has nothing to do with R. It is MobaXterm. This is a terminal for Windows. The two functionalities that I use: It gives me many Linux commands on my Windows machine and it allows me to connect to remote machines via SSH.


#### RLL: What motivated you to give a talk at R-Ladies Lausanne?
<u>LW</u>: Sarvenaz asked me if I wanted to give a short talk at the first R-ladies meeting. I took a long time to respond to her request. In the end, my principal motivation to do it was to show my appreciation for this new initiative.

#### RLL: ...and we appreciated it! Thank you! And thank you for taking time to do this interview!


**Technical note:** *This is a transcription of a recorded interview between Leonore and Sina. Additionally, Lenore provided the answers to the questions in written form. Some text was changed for clarification.*
