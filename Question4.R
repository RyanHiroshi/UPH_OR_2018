#Practical = x
#Humanistic = y

#Model
#x + y <= 30
#x     >= 10
#y     >= 10
#Z = 1500x + 1000y

library(lpSolveAPI)

Q4= make.lp(3,2)

set.column(Q4, 1, c(1,1,0))
set.column(Q4, 2, c(1,0,1))

set.constr.type(Q4, c("<=",">=",">="))
set.rhs(Q4, c(30,10,10))

set.objfn(Q4, c(1500,1000))
lp.control(Q4, sense='max')
solve(Q4)

get.objective(Q4)
get.variables(Q4)

#plot(Q4)
