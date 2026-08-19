# Addition with data vectors
c(2,3,5,7) + c(-2,-3,-5,8)
c(2,3,5,7) + c(8,9)
c(2,3,5,7) + c(8,9,10)

#Subtraction with data vectors
c(2,3,5,7) - c(-2,-3,-5,8)
c(12,13,15,17) - c(8,9)
c(12,13,15,17) - c(8,9,10)

#Multiplication with data vectors
c(2,3,5,7) * c(-2,-3,-5,8)
c(2,3,5,7) * c(8,9)
c(2,3,5,7) * c(8,9,10)

#Division with data vectors
c(24,20,8,16) / c(3,4,2,8)
c(24,20,8,16) / c(4,2)
c(24,20,8,16) / c(4,2,8)

#Assignment Operator
x=20
x

x<-20
x

x=apple
x

x="apple"
x

x='apple'
x

#Knowing numbers and characters
x=20
is.numeric(x)
is.character(x)

y='apple'
is.character(y)
is.numeric(y)

#Converting numbers and characters
x=20
is.numeric(x)

y=as.character(x)
is.numeric(y)
is.character(y)
y

#Converting numbers and characters
y="apple"
is.numeric(y)
is.character(y)

z=as.numeric(y)
is.numeric(z)
is.character(z)
z

#Case sensitivity in R
x<-20
x

X<-30
X
x

#Combining values in data vector
y=1,2,3,4,5
y=(1,2,3,4,5)
y=c(1,2,3,4,5)
y

#Mode
x=6
x
mode(x)

y="apple"
y
mode(y)

z=3.3457
z
mode(z)

storage.mode(x)
storage.mode(y)
storage.mode(z)

a="TRUE"
mode(a)
storage.mode(a)

a=TRUE
mode(a)
storage.mode(a)

#Infinity
3/0
5+Inf
x=5+Inf
is.finite(x)
is.infinite(x)

#R as a calculator
2+3
2*3
2-3
3/2
2*3-4+5/6
(2+3)*5+5-10
(((2+3)*5+5)-10)/2
2+5
2 + 5
2   +   5
2   +5
2^3
2**3
2^0.5
2**0.5
2^-0.5

#Power operation with scalar 
c(2,3,5,7)^2

#Power operation with vector 
c(2,3,5,7)^c(2,3)
c(1,2,3,4,5,6)^c(2,3,4)
c(2,3,5,7)^c(2,3,4)

#Addition with Scalar
c(2,3,5,7) + 10
#Subtraction with Scalar
c(2,3,5,7) - 10
#Multiplication with Scalar
c(2,3,5,7) * 10
#Division with Scalar
c(2,3,5,7) / 10

#Integer Division with scalar
# Operator: %/%
2%/%2
5%/%2
7%/%3
c(2,3,5,7) %/% 2

#Integer Division with scalar
c(2,3,5,7) %/% c(2,3)

#Integer Division with data vector
c(2,3,5) %/% c(2,3)

#Modulo Division (x mod y) with scalars
#Operator: %%
2%%2
3%%2
7%%3
7%%4
c(2,3,5,7) %% 2

#Modulo Division (x mod y) with data vectors
c(2,3,5,7) %% c(2,3)
c(2,3,5) %% c(2,3)

#Maximum
max(1.2,3.4,-7.8)
max(c(1.2,3.4,-7.8))

#Minimum
min(1.2,3.4,-7.8)
min(c(1.2,3.4,-7.8))

#Arithmetic mean
mean(2,3,4)
mean(c(2,3,4))

abs(-2.3)
abs(c(-1,-2,-14,5,7))
sqrt(196)
sqrt(c(196,36,64))
round(1.008)
round(1.23)
round(1.83)
floor(5.6)
ceiling(2.3)
sum(c(2,3))
prod(c(4,5))
log(2)
log(10)
log(exp(1))
log(c(10,100,1000))
log10(10)
log10(100)
log10(c(10,100,1000))
log2(2)
exp(2)
sin(30)
cos(50)
tan(45)
asin(30)
acos(45)
atan(45)
sinh(30)
cosh(45)
tanh(45)
asinh(30)
acosh(45)
atanh(45)

#Assignments
x1=c(1,2,3,4)
x1
x2=x1^2
x2
c(1,2,3,4) + sum(c(1,2,3,4)) * prod(c(1,2))
abs(c(1,2,3,4)- sum(c(1,2,3,4))*prod(c(1,2)))

#Matrix
x=matrix(nrow=4,ncol=2,data=c(1,2,3,4,5,6,7,8))
x
x[3,2]
x=matrix(nrow=4,ncol=2,data=c(1,2,3,4,5,6,7,8),byrow=TRUE)
x
#Properties of a Matrix
dim(x)
nrow(x)
ncol(x)
mode(x)
attributes(x)
help(matrix)