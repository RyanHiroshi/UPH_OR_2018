#Grano = x1
#Wheatie = x2

#Model
#0.2x + 0.4y <= 60
#x           <= 200
#y           <= 120
#Z = x + 1.35y

library(lpSolveAPI)

Q6 = make.lp(3,2)

set.column(Q6, 1, c(0.2,1,0))
set.column(Q6, 2, c(0.4,0,1))
set.constr.type(Q6, c("<=","<=","<="))
set.rhs(Q6, c(60,200,120))

set.objfn(Q6, c(1,1.35))
lp.control(Q6, sense='max')
solve(Q6)

get.objective(Q6)
get.variables(Q6)

#plot(Q6)
