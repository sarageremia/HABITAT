n <- 500
par(mfrow=c(1,2), mar=c(4,4,1,1))
set.seed(1234)
x <- sample(c(0,1), n, prob = c(.5,.5), replace = T)
plot(1:n, cumsum(x)/1:n,type = "l", ylim=c(0,1), 
     ylab=expression(n[Head]/n), xlab="n")
abline(h=.5, lty=2, col="red")

x <- sample(c(0,1), n, prob = c(.5,.5), replace = T)
points(1:n, cumsum(x)/1:n,type = "l", col = "grey")

# ----------------------------------------------------------
plot(1:n, cumsum(x)/1:n,type = "l", ylim=c(0,1), 
     ylab=expression(n[Head]/n), xlab="n", col = "gray80")
for(i in 1:100){
  x <- sample(c(0,1), n, prob = c(.5,.5), replace = T)
  points(1:n, cumsum(x)/1:n,type = "l", col = "gray80", lwd=.5)
  
}
abline(h=.5, lty=2, col="red")
