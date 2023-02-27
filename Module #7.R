
#using generic function on data set 
head(airquality)

#s3 vs #s4 test
airquality@ozne<-9000

#example of s3
#class creation
davitz<- list(name='davitz', gpa=3.7, year="senior", graduation=T)
class(davitz)<- 'student'
attributes(davitz)

#set generic
setGeneric('print',def=function(stdnt){
  cat(stdnt$name,"\n")
  cat(stdnt$gpa,"\n")
  cat(stdnt$year,"\n")
  cat(stdnt$graduation,"\n")
})

#use method
print(davitz)



#example of s4
#class creation
setClass("numberset",
         representation(
           num1='numeric',
           num2='numeric',
           num3='numeric'
         ))

#overiding method
setMethod('add','numberset',
          function(x){
            cat(x@num1+x@num2+x@num3)
          })

#use method
set1<-new('numberset',num1=1,num2=2,num3=3)

add(set1)



