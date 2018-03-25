#Persamaan
#10x + 5y  <= 600
#6x  + 20y <= 600
#8x  + 10y <= 600
#z=2x+3y

library(lpSolveAPI)

Q1 = make.lp(3,2)

set.column(Q1, 1, c(10,6,8))
set.column(Q1, 2, c(5,20,10))
set.constr.type(Q1, c("<=","<=","<="))
set.rhs(Q1, c(600,600,600))

set.objfn(Q1, c(2,3))
lp.control(Q1,sense='max')
solve(Q1)

get.objective(Q1)
get.variables(Q1)

#plot(Q1)
