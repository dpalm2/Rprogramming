#1
A=matrix(c(2,0,1,3), ncol=2) 
B=matrix(c(5,2,4,-1), ncol=2)
A
addition= A+B

addition
substraction= A-B
substraction

#2
?diag()
diag(x= c(4,1,2,3),ncol=2, nrow=2)

#3

New_m= matrix(c(2,2,2,2,2,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0),ncol=5, nrow = 5)
New_m
diag(New_m)<-3
New_m
