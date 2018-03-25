#Radio = x
#TV = y

#Model
#15x + 300y <= 10000
#x          <= 400
#-x  +   2y <= 0
#Z = x + 25y

library(lpSolveAPI)

Q8 = make.lp(3,2)

set.column(Q8, 1, c(15,1,-1))
set.column(Q8, 2, c(300, 0, 2))
set.constr.type(Q8, c("<=","<=","<="))
set.rhs(Q8, c(10000,400,0))

set.objfn(Q8, c(1,25))
lp.control(Q8, sense='max')
solve(Q8)

get.objective(Q8)
get.variables(Q8)

#plot(Q8)
