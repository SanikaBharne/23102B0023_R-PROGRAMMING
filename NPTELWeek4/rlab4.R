x=matrix(nrow=4, ncol=3, data=c(1:12))
x
rownames(x)
colnames(x)
rownames(x)=c("r1","r2","r3","r4")
x
colnames(x)=c("c1","c2","c3")
x
rownames(x)
colnames(x)

x=matrix(nrow=4,ncol=2,data=2)
x

#Diagonal matrix
d=diag(1,nrow=3,ncol=3)
d
d=diag(5,nrow=3,ncol=3)
d

#Transpose --> t(x)
x=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
x
xt=t(x)
xt

#Row and Column sums
x=matrix(nrow=4,ncol=2,data=c(1,2,3,4,5,6,7,8))
x
rowSums(x)
colSums(x)

#Row and Column means
x=matrix(nrow=4,ncol=2,data=c(1,2,3,4,5,6,7,8))
x
rowMeans(x)
colMeans(x)

#Access to rows,columns or submatrices
x=matrix(nrow=5, ncol=3, byrow=T, data=1:15)
x
x[3,]
x[,2]
x[4:5,2:3]
x[c(1,4),c(1,3)]

#Addition of a matrix with a constant
x=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
x
x+5

#Subtraction of a matrix with a constant
x=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
x
x-5

#Multiplication of a matrix with a constant
x=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
x
x*5

#Division of a matrix with a constant
x=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
x
x/2

#Addition and Subtraction of matrices
x=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
x
y=matrix(nrow=4,ncol=2,data=11:18,byrow=T)
y
x+y
x-y
#Addition and Subtraction (complex)
4*x
x
x+4*x
4*x-x

#Multiplication of matrices --> %*%
x=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
y=matrix(nrow=2,ncol=4,data=11:18,byrow=T)
x
y
x%*%y
y%*%x

#Multiplication with transpose
x
t(x)
t(x)%*%x
x%*%t(x)

#Cross Product --> crossprod()
x
t(x)
crossprod(x)
#crossprod(x) == t(x)%*%x

#Concatenating matrices --> rbind(), cbind()
x=matrix(nrow=3,ncol=2,data=1:6,byrow=T)
y=matrix(nrow=3,ncol=2,data=11:16,byrow=T)
x
y
rbind(x,y)
cbind(x,y)

#Inverse --> solve()
y=matrix(nrow=2,ncol=2,byrow=T,data=c(84,100,100,120))
y
solve(y)

#Eigen values and eigen vectors of matrices --> eigen()
y=matrix(nrow=2, ncol=2, byrow=T, data=c(84,100,100,120))
y
eigen(y)

#xor(x,y) --> either..or(exclusive)
#isTRUE(x) --> test if x is TRUE
#isFALSE(x) --> test if x is FALSE
#&, && --> and
# |, || --> or
#(shorter form performs element-wise comparisons almost same as arithmetic operators
#longer form evaluates left to right examining only the first element of each vector. Evaluation proceeds only until the result is determined.)

#use of | and ||
x=8
(x<10) || (x<2)

x=18
(x<10) || (x<2)

x=c(8,18)
(x<10) || (x<2)

(x<10) | (x<2)

#use of & and &&
x=5
(x<10) && (x>2)

x=15
(x<10) && (x>2)

x=c(8,18)
(x<10) && (x>2)

(x<10) & (x>2)

#Examples
x=1:6
(x>2) & (x<5)
x[(x>2) & (x<5)]
(x>2) | (x<5)
x[(x>2) | (x<5)]
(x>2) && (x<5)#left to right examining only first element of each vector
(x[1]>2) & (x[1]<5)

#Logical Operations
x=TRUE
y=FALSE
x&y
x|y
!x

x=5
Logical1=(x>2)
Logical1
is.logical(Logical1)

Logical2=(x<10)
Logical2
is.logical(Logical2)

Logical3=(x!=5)
Logical3
is.logical(Logical3)

Logical4=(2*x>11)
Logical4
is.logical(Logical4)

Logical5=(3*x<20)
Logical5
is.logical(Logical5)

8>7
7<5
7>7
7>=7
8<8
8<=8
8!=9
9!=9
7==7
7==8
x=TRUE
!x
x=c(1,2,3)
y=c(4,5,6)
x>y
x<y
x!=y
x==y
isTRUE(8<6)
isTRUE(8>6)
isFALSE(5<8)
isFALSE(5>8)