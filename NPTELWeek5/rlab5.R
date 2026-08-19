#Missing data
x=NA
is.na(x)
x=c(11,NA,13,NA)
is.na(x)
mean(x)
mean(x,na.rm=TRUE)#NAs can be removed

#NA versus NULL
#NA is a placeholder for something that exists but is missing.
#NULL stands for something that never existed

#Location of missing values
which(is.na(x))

#Count of NA in a vector
sum(is.na(x))

#Finding complete cases
complete.cases(x)

#Finding complete data set
#The function na.omit() returns the object with listwise deletion of missing values.
y=na.omit(x)
y
attr(y,"na.action")  #positions in the original vector contained the omitted NA values
attr(y,"class")
attributes(y)   #Indicates that the missing values were omitted
mean(x)
mean(y)

#Control structures in R
#if()
#if() should not be applied when the condition being evaluated is a vector. It is best used only when meeting a single element condition.
x=5
if(x>4) x*3

x=3
if(x>4) x*3

x=6
if(x>3){
  print("The value is more than 3")
}
x=2
if(x>3){
  print("The value is more than 3")
}

#if else()
x=5
if(x==3){ x=x-1} else{ x=2*x}
x

x=3
if(x==3){ x=x-1} else{ x=2*x}
x

x=6
if(x>3){
  print("The value is more than 3")
} else {
  print("The value is less than 3")
}

x = 2
if(x > 3){
  print("The value is more than 3")
} else {
  print("The value is less than 3")
}

#if else if()
x=5
if(x==3){
  x=x-1
} else{ 
    if(x<3){
      x=x+5
    } else{ 
        x=2*x}
  }
x

x=2
if(x==3){
  x=x-1
}else 
  if(x<3){
  x=x+5
}else{
  x=2*x
}
x

x = 3
if ( x==3 ) {
  x = x-1
} else{ 
    if ( x < 3 ) {
      x = x+5
    } else { 
        x = 2*x }}
x

#ifelse(test,yes,no)  Vector‐valued evaluation of conditions
x=1:10
x
ifelse(x<6,x^2,x+1)

x=c(7,9,8,4)
ifelse(x%%2==0,"even number","odd number")
# %%: Modulo Division‐ Finds the remainder after division

#switch()
#For multiple matches, the first match element will be used.
switch(2,"apple","banana","orange")
switch(1,"apple","banana","orange")
switch(4,"apple","banana","orange")

switch("colour","colour"="blue","gender"="male","volume"=50)
switch("volume","colour"="blue","gender"="male","volume"=50)
switch("size","colour"="blue","gender"="male","volume"=50)

#The which() function returns the position of the elements in a logical vector which are TRUE.
x=c(10,15,8,14,6,12)
x
which(x==14)
which(x!=12)
which(x>10)

x=matrix(nrow=3,ncol=3,data=1:9)
x
which.min(x)
which.max(x)
which(x%%2==1)
which(x%%2==1,arr.ind=TRUE) 
#Gives the positions (row, columns) of the values