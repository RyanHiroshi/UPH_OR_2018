#Sheets = x
#Bar = y

#Model
#x       <= 550
#y       <= 580
#3x + 4y <= 2400
#Z = 40x + 35y

library(lpSolveAPI)

Q3 = make.lp(3,2)

set.column(Q3, 1, c(1,0,3))
set.column(Q3, 2, c(0,1,4))

set.constr.type(Q3, c("<=","<=","<="))
set.rhs(Q3, c(550,580,2400))

set.objfn(Q3, c(40,35))
lp.control(Q3, sense='max')
solve(Q3)

get.objective(Q3)
get.variables(Q3)

#plot(Q3)
