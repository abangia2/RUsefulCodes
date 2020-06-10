#Solving the quadratic equation x=−b±b2−4ac√2a.
#Taking a,b,c values as 2, -3, 4
a <- 2
b <- -3
c <- 4
x1 <- (-b+sqrt(b^2-4*a*c))/(2*a)
x2 <- (-b-sqrt(b^2-4*a*c))/(2*a)

#Calculating Log with base
#Code = log(x, base = exp(1))
#To calculate log with base 2 of 1024
log(1024, base = 2)

#Calcuating rows and variables in the data set
nrow(datasetname)
str(datasetname)

#Calculating number of levels of a factor.
nlevels(datasetname$factorname)

#Order,sort,rank functions

#Order function which re-arranges its first argument into ascending or descending order
#and returns the index of that arranged number.
x <- c(2,43,27,95,17)
order(x)

#Sort function: sort a vector or factor in ascending or descending order.
sort(x) 
              Or
sort(x, decreasing = FALSE)
 
#rank function: returns the sample ranks of the values in a vector.

rank(x)

#Min,Max,which.min,which.max

x <- c(2,43,27,95,17)

#min() returns minimum value in a vector
#max() returns the maximum value in a vector
#which.min() determines the index of the first minimum of a numberic or logical vector
#which.max() determines the index of the first minimum of a numberic or logical vector

#It would follows as below:
  min(x)
  max(x)
  which.min(x)
  which.max(x)

# ****************************************************************
# HarvardX Data Science R Basic - Course Assesment 
# Below is my version for building codes for the Questions
  library(dslabs)
  data(heights)
#First, determine the average height in this dataset. 
#Then create a logical vector ind with the indices for those individuals who are above average height.
  
#How many individuals in the dataset are above average height?
   
  avg <- mean(heights$height)
  ind <- sum(heights$height > avg)
  
#How many individuals in the dataset are above average height and are female?
  
  ind <- sum(heights$height > avg & heights$sex == "Female")
  
#What proportion of individuals in the dataset are female?
 
  ind <- mean(heights$sex == "Female")
  
#Determine the minimum height in the heights dataset.
  
  min(heights$height)
  
#Use the match() function to determine the index of the individual with the minimum height.
 
   match(50,heights$height)
   
#Determine the maximum height.
   
   max(heights$height)
   
#Write code to create a vector x that includes the integers between the minimum and maximum heights.
   
   x <- min(heights$height):max(heights$height)
   
#How many of the integers in x are NOT heights in the dataset?
   
   sum(!x %in% heights$height)
   
#Using the heights dataset, create a new column of heights in centimeters named ht_cm. Recall that 1 inch =
#2.54 centimeters. Save the resulting dataset as heights2.
 
   heights2 <- mutate(heights, ht_cm = height*2.54)
   
#What is the height in centimeters of the 18th individual (index 18)?
   
   heights2$ht_cm[18]
   
#What is the mean height in centimeters?
   
   mean(heights2$ht_cm)
   
#How many females are in the heights2 dataset?
   
   sum(heights2$sex == "Female")
   
#What is the mean height of the females in centimeters?
   
   female <- heights2$height[heights2$sex == "Female"]
   mean(female)
   
# Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. What relationship do you see?
   
   library(dslabs)
   data(olive)
   head(olive)
   
   plot(olive$palmitic,olive$palmitoleic)
   
#Create a histogram of the percentage of eicosenoic acid in olive
   
   hist(olive$eicosenoic)
   
#Make a boxplot of palmitic acid percentage in olive with separate distributions for each region.
   
   boxplot(palmitic ~ region, data = olive)
   
#Write an ifelse statement that returns 1 if the sex is Female and 2 if the sex is Male.
#What is the sum of the resulting vector?
   
   sum(ifelse(heights$sex == "Female", 1, 2))
   
#Write an ifelse statement that takes the height column and returns the height if it is greater than 72 inches and returns 0 otherwise.
#What is the mean of the resulting vector?
 
   mean(ifelse(heights$height > 72, heights$height,0))
   
#Write a function inches_to_ft that takes a number of inches x and returns the number of feet. One foot equals 12 inches.
#What is inches_to_ft(144)?
   
      inches_to_ft <- function(x){
       x/12
       }
      inches_to_ft(144)
      
#How many individuals in the heights dataset have a height less than 5 feet?
      
      sum(inches_to_ft(heights$height) < 5)
      
#The factorial() function computes factorials in R. For example, factorial(4) returns 4! = 4 × 3 × 2 × 1 = 24. Factorial function below:
      
      m <- 10
      f_n <- vector(length = m)
      for( n in 1:m){
         f_n[n] <- factorial(n)
         }
         f_n
         
#Compute log to the base 10 (log10) of the sqrt of 100.
         
         log(sqrt(100), base = 10)
         
#Extracting the column Names
         
         names(datasetname)
         
libraray(dslabs)
data(murders)
         
#Identical function
         
         a <- class(murders$abb)
         b <- class(murders["abb"])
         identical(a,b)
         
#Length and Levels function combined
         
         length(levels(murders$region))
         
#Table function with region and states
         
         table(murders$region)

#length.out argument under seq function will generate sequence that are increasing by length.out number.
         
         x <- seq(0, 100, length.out = 5)
         
# with reference to above example, R computes like this 0, 5*5,5*5*5,5*5*5*5 and returns 0,25,75,100 
#this is how length.out argument works

#When looking at a dataset, we may want to sort the data in an order that makes more sense for analysis. Let's learn to do this using the murders dataset as an example.
#Use the $ operator to access the population size data and store it in the object pop.
#Then use the sort function to redefine pop so that it is sorted.
#Finally use the [ operator to report the smallest population size.
         
         library(dslabs)
         data(murders)
         pop <- murders$population
         sort(pop)
         min(pop)

#Find the index of the smallest state using which.min(murders$population).
#Define a variable states to hold the state names from the murders data frame.
#Combine these to find the state name for the smallest state.
         
#Single line of code
      
                   states <- murders$state
                   states[which.min(murders$population)]
                       OR
                  murders$state[which.min(murders$population)] 
#Create a data frame with both variables following the correct order. Use the bracket operator [ to re-order each column in the data frame. For example, states[o] orders the abbreviations based by population size.
                  
                  ind <- order(murders$population)
                  states[ind] ## Order the states based the population size
                  my_df <- data.frame(states = states[ind], ranks = ranks[ind])
                  
#Calculation NA's enteries in the dataset
                  
                  sum(is.na(datasetname))
                  

#Calcuating Murder rate for each of the state
                  
                  murder_rate <- murders$total/murders$population* 100000
                  
#match() function
                  
                  abb <- c("AK", "MI", "IA")
                  states[match(abb, murders$abb)]
                  
#which function: which all abb not available in murders$abb
                  abb <- c("MA", "ME", "MI", "MO", "MU")
                  ind <- which(!abb%in%murders$abb)
                  abb[ind]

#Using the pipe %>%
                  
                  libraray(dplyr)
                  library(dslab)
                  data(murders)
                  murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))
                  my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1) %>%  select(state, rate, rank)

                  OR
                  
                  my_states <- murders %>% mutate(rate = total/population * 100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast", "West"), rate < 1) %>% select(state, rate, rank)
                  

                  

                  
                  

                   
         

               
         
         

      
   
   
   
       
   
   
   

  
    
  


