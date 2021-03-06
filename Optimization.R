
# f <- function(x) sum((x[1]-5)^2 + (x[2]-7)^2 )
# nlm(f, c(10, 10))

#nlm
f_opt <- function(w) 
    sum( ( ((120*w[1]+9*w[2]+12*w[3]+28*w[4]+199*w[5])/(170*w[1]+250*w[2]+270*w[3]+430*w[4]+910*w[5])) - 0.29)^2,
         (((16*w[1]+206*w[2]+28*w[3]+27*w[4]+213*w[5])/(170*w[1]+250*w[2]+270*w[3]+430*w[4]+910*w[5])) - 0.29)^2,
         (((7*w[1]+12*w[2]+209*w[3]+33*w[4]+199*w[5])/(170*w[1]+250*w[2]+270*w[3]+430*w[4]+910*w[5])) - 0.22)^2,
         (((27*w[1]+23*w[2]+21*w[3]+342*w[4]+299*w[5])/(170*w[1]+250*w[2]+270*w[3]+430*w[4]+910*w[5])) - 0.20)^2)
# nlm(f_opt, c(1, 1, 1, 1, 1))
# w <- c(1.7469638  0.8230646  0.5363173 -0.1492373  0.7722584)

# nloptr
# install.packages('nloptr')
library('nloptr')

w0 = c(1, 1, 1, 1, 1)
lb <- c(0, 0, 0, 0, 0)
auglag(w0, f_opt, gr = NULL, lower=lb)




