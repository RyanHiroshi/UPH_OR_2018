#Product A = x
#Product B = y

#Model
#-0.2x + 0.8y <= 0
#x            <= 100
#2x    + 4y   <= 240
#Z = 20x + 50y

library(lpSolveAPI)

Q2 = make.lp(3,2)

set.column(Q2, 1, c(-0.2, 1, 2))
set.column(Q2, 2, c(0.8,0,4))

set.constr.type(Q2, c("<=","<=","<="))
set.rhs(Q2, c(0,100,240))

set.objfn(Q2, c(20,50))
lp.control(Q2, sense='max')
solve(Q2)

get.objective(Q2)
get.variables(Q2)

#plot(Q2)
