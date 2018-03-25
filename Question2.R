#Product A = x
#Product B = y

#Persamaan
#-0.2x + 0.8y <= 0
#x            <= 100
#2x    + 4y   <= 240
#Z = 20x + 50y

library(lpSolveAPI)

Q4 = make.lp(3,2)

set.column(Q4, 1, c(-0.2, 1, 2))
set.column(Q4, 2, c(0.8,0,4))

set.constr.type(Q4, c("<=","<=","<="))
set.rhs(Q4, c(0,100,240))

set.objfn(Q4, c(20,50))
lp.control(Q4, sense='max')
solve(Q4)

get.objective(Q4)
get.variables(Q4)

#plot(Q4)
