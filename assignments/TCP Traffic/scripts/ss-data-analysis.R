#Written by Fraida Fund
#Adapted for Fabric by Tristan Jordan
#Addapted for TCP_Traffic by Luis C

library(ggplot2)
UDPdat <- read.csv("~/UDP-ss.csv", header=FALSE)
names(UDPdat) <- c("UDP", "time")
TCPdat <- read.csv("~/TCP-ss.csv", header=FALSE)
names(TCPdat) <- c("TCP", "time")
dat <- merge(UDPdat, TCPdat, by = "time", all = TRUE)
dat[is.na(dat)] <- 1

a <- dat[1,1]
for (i in 0:nrow(dat) ){
  dat[i,1] <- dat[i,1] - a
}

print(dat)

q <- ggplot(dat) + geom_line(aes(x=time, y=TCP, colour="TCP")) + 
  geom_line(aes(x=time, y=UDP, colour="UDP"), linetype='twodash')
q <- q + scale_y_continuous("Packets Transmitted")

print(q)
svg("Traffic-ss.svg")
print(q)
