<!-- Make sure that the knitr package is installed and loaded. -->
<!-- For more info on the package options see http://yihui.name/knitr/options -->

<!-- Replace below with the title of your project -->
# Does Educational Attainment really pay off?

<!-- Enter the code required to load your data in the space below. The data will be loaded but the line of code won't show up in your write up (echo=FALSE) in order to save space-->



<!-- In the remainder of the document, add R code chunks as needed -->

## Introduction:

The analysis investigates the relationship between the educational attainment and the one's perception on his/her financial status during last few years.  Most people grew up hearing the lectures from their parents and teachers how important to go to school.  The prospect of the US economy continues to look grim while the price tag on the higher education is on the rise.  It is a high time to ask the questions: Is there a return on investment in monetary sense?  How much is enough to get one equipped for what is called knowledge economy?  Is more the better?

## Data:

### Overview
  The General Social Survey (GSS) data used in this analysis was obtained from the web site of the National Opinion Research Center. [1]  The original dataset had been modified by facilitators of Statistical Analysis and Inference class on Coursera. [2]

The General Social Survey (GSS) was conducted by the National Opinion Research Center.  The survey collects demographic data such as the respondent's age, gender, and ethnicity as well as religious affiliations along with his/her opinion on social and political issues in the contemporary America.     
The data set that will be used in the analysis is a cumulative data from 1972 to 2012.  The total number of the observation is 57061 with 144 variables.  The interviews were conducted by one of these methods: in-person, telephone, computer-aided.  

### Cases
  In this analysis, a case is defined as an observed response on one's highest degree completed and his/her perception about change in his/her financial situation in the last few years.  1010 observations were removed from the analysis since their degree information were not provided (NA).  Therefore, the analysis was conducted based on 56051 observations.   
  
### Variables of Interest
The variables of the interest are only two out of 144 collected by the GSS, namely degree and finalter.  The independent variable is degree.  This indicates the highest degree completed by the respondent.  This is an ordinal categorical variable with five levels: Less than High School (coded as Lt High School), High School, Junior College, Bachelor, and Graduate.  The dependent variable is finalter.  This is the respondent's opinion on of whether his/her financial situation has gotten better, stayed the same, or worth in the last few years.  This is an ordinal categorical variable with three levels: Worse, Stayed Same, and Better.
  
### Type of Study
  This is an observational study.  The data was collected by conducting a survey and were not  results from a designed experiment where subjects are randomly assigned to a control group and a treatment group.  

### Scope of Inferences
  The population of the concern is males and females whose age range from 18 and 89 who are living in the United States. The data was collected from the people with various educational levels, financial status, ethnic backgrounds, marital status, and regions of the United States.  The intention is to be representative of the current US population.  Therefore the analysis can be generalized to adults who are living in the United States. 
  
  The survey data was collected from the people who agreed to participate in the survey and were reachable by the means of a telephone line, a computer network, or in-person.  This could be a source of a bias.  
  
Since this is an observational study, this data cannot be used to establish causality between the educational attainment and the financial situation.  Instead, the analysis seeks correlations between two variables.

## Exploratory data analysis:

Insert exploratory data analysis here...

```r
table(gss$degree, useNA = "ifany")
```

```
## 
## Lt High School    High School Junior College       Bachelor       Graduate 
##          11822          29287           3070           8002           3870 
##           <NA> 
##           1010
```



```r
table(gss$finalter, useNA = "ifany")
```

```
## 
##      Better       Worse Stayed Same        <NA> 
##       19697       11967       20654        4743
```






```r
prop.table(table(as.character(gss.LtHigh$degree), gss.LtHigh$finalter, useNA = "ifany"))
```

```
##                 
##                   Better   Worse Stayed Same    <NA>
##   Lt High School 0.22780 0.25258     0.46084 0.05879
```



```r
prop.table(table(as.character(gss.High$degree), gss.High$finalter, useNA = "ifany"))
```

```
##              
##                Better   Worse Stayed Same    <NA>
##   High School 0.34872 0.21296     0.35463 0.08369
```



```r
prop.table(table(as.character(gss.JuniorCol$degree), gss.JuniorCol$finalter, 
    useNA = "ifany"))
```

```
##                 
##                  Better  Worse Stayed Same   <NA>
##   Junior College 0.4007 0.1902      0.2967 0.1124
```



```r
prop.table(table(as.character(gss.Bachelor$degree), gss.Bachelor$finalter, useNA = "ifany"))
```

```
##           
##             Better   Worse Stayed Same    <NA>
##   Bachelor 0.45439 0.16396     0.28380 0.09785
```



```r
prop.table(table(as.character(gss.Grad$degree), gss.Grad$finalter, useNA = "ifany"))
```

```
##           
##            Better  Worse Stayed Same   <NA>
##   Graduate 0.4403 0.1571      0.2974 0.1052
```




```r
barplot(LtHigh.prop, main = "Less Than High School", ylab = "Proportion")
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-111.png) 

```r
barplot(High.prop, main = "High School", ylab = "Proportion")
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-112.png) 

```r
barplot(JuniorCol.prop, main = "Junior College", ylab = "Proportion")
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-113.png) 


### Inference:

Insert inference section here...

### Conclusion:

Insert conclusion here...

