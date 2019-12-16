# Import lpSolve package
library(lpSolve)

# Set coefficients of the objective function
f.obj <- c(3,9)

# Set matrix corresponding to coefficients of constraints by rows
# Do not consider the non-negative constraint; it is automatically assumed
f.con <- matrix(c(1,3,
                  1,1,
                  1,-1),nrow=3,byrow=TRUE)

# Set unequality signs
f.dir <- c("<=",
           "<=",
           "<=")

# Set right hand side coefficients
f.rhs <- c(60,
           10,
           0)

# Max Value
lp("max",f.obj,f.con,f.dir,f.rhs)


# Min Value
lp("min",f.obj,f.con,f.dir,f.rhs)


# Variables final values
lp("max",f.obj,f.con,f.dir,f.rhs)$solution

# Variables final values
lp("min",f.obj,f.con,f.dir,f.rhs)$solution


# Sensitivities max
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.to
# Sensitivities min
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.from
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.to


# Dual Values (first dual of the constraints and then dual of the variables)
# Duals of the constraints and variables are mixed
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals

# Dual Values (first dual of the constraints and then dual of the variables)
# Duals of the constraints and variables are mixed
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals
# Duals lower and upper limits
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.to

# Duals lower and upper limits
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.from
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.to

