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






