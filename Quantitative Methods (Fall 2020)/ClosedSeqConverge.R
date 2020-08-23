### Delete all things in Global Environment.

rm(list = ls())  

###  Delete all things in Console.
# 1. Move cursor in consle
# 2. Control + L 

######
# Section 2.1.4
######

# Theorem 
# A set $S\subset \mathbb{R}^{n}$ is closed if and only if 
# for all sequences $\{x_k\}$ such that $x_k\in S$ for each $k$ and $x_k\rightarrow x$, it is the case that $x\in S$. 


### plotmath
# https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/plotmath.html

### draw.circle
# https://www.rdocumentation.org/packages/plotrix/versions/3.7/topics/draw.circle

# install.packages("plotrix")
library(plotrix)

# draw.circle(x,y,radius,nv=100,border=NULL,col=NA,lty=1,density=NULL, angle=45,lwd=1)
plot(0:20, 0:20, xlim = c(0, 20), ylim = c(0, 20), type='n', xlab ='', ylab ='', xaxt = 'n', yaxt = 'n', frame = FALSE)

### S: subset of M
# S; (10, 10) with r = 3
draw.circle(10, 10, 3.5, border = 'black', lty = 1, lwd = 5)
text(9, 13, c('S'), col = 'black', cex = 3)
SC <- expression(paste(S^C))
text(15, 15, labels = SC, col = 'black', cex = 3)

# d(x_k, y) = 1/k; (14, 14) with r = 2
draw.circle(14, 10, 2, border = 'red', lty = 2, lwd = 5)
ballx1 <- seq(12, 14, 0.1); bally1 <- rep(10, length(ballx1))
lines(ballx1, bally1 , lty = 1, col = 'red', lwd = 5)
xk <- expression(paste(x[k]))
text(11.5, 10, labels = xk, col = 'black', cex = 2) # xk
text(14.5, 10, c('y'), col = 'black', cex = 2) # y
text(13, 10.5, c('1/k'), col = 'red', cex = 1.5) # 1/k

# d(x_k, y) < epsilon; (12, 10) with r = 3
draw.circle(12, 10, 3, border = 'blue', lty = 2, lwd = 5)
ballx2 <- seq(12, 15, 0.1); bally2 <- rep(9.8, length(ballx2))
lines(ballx2, bally2 , lty = 1, col = 'blue', lwd = 5)
epsilon <- expression(paste(epsilon))
text(13, 9, labels = epsilon, col = 'blue', cex = 2)


