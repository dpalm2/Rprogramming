install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
install.packages("plyr")
library(data.table)
library(plyr)

##load in document 
assignment6<-plz

##organize grades by gender average
assignment6
StudentAverage = ddply(assignment6,"Sex",transform,Grade.Average=mean(Grade))
StudentAverage
write.table(StudentAverage,"Sorted_Average")


#organize I names
i_students <- subset(StudentAverage, grepl("i", StudentAverage$Name, ignore.case=T))
head(i_students)

#Convert data set into CSV
write.csv(i_students$Name,"i_students")
