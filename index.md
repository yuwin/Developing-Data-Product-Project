---
title       : Coursera Developing Data Product  
subtitle    : Shiny App for Quick View of Data
author      : Yuwin Wang
job         : 26 April, 2015
framework   : io2012       # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]           # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

This shiny app under development allows a user to enter the name of the data set 
,which is from both r datasets and HistDara, to have a quick view of the data. You don't need to know how to use R commend. Only a few click, everyone could see what the dataset looks like.

--- .class #id 

## Main Function

There are there main function for user to setting.

1.Name of the dataset: enter the name of the dataset for the datasets and HistData packages.

2.Way of quick view: choose the way that you like to view your data.

3.select the numbers of the observation of data by the slider bar.

--- .class #id 

## Result

We take the swiss data as default. The following r summary command will show in the main panel of the shiny app.

```r
summary(swiss)
```

```
##    Fertility      Agriculture     Examination      Education    
##  Min.   :35.00   Min.   : 1.20   Min.   : 3.00   Min.   : 1.00  
##  1st Qu.:64.70   1st Qu.:35.90   1st Qu.:12.00   1st Qu.: 6.00  
##  Median :70.40   Median :54.10   Median :16.00   Median : 8.00  
##  Mean   :70.14   Mean   :50.66   Mean   :16.49   Mean   :10.98  
##  3rd Qu.:78.45   3rd Qu.:67.65   3rd Qu.:22.00   3rd Qu.:12.00  
##  Max.   :92.50   Max.   :89.70   Max.   :37.00   Max.   :53.00  
##     Catholic       Infant.Mortality
##  Min.   :  2.150   Min.   :10.80   
##  1st Qu.:  5.195   1st Qu.:18.15   
##  Median : 15.140   Median :20.00   
##  Mean   : 41.144   Mean   :19.94   
##  3rd Qu.: 93.125   3rd Qu.:21.70   
##  Max.   :100.000   Max.   :26.60
```


