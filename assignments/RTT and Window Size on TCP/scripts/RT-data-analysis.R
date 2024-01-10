# Written by Fraida Fund
# Adapted for Fabric by Tristan Jordan
# Addapted for RT window size by Luis C

library(ggplot2)

TCPdat <- read.csv("~/TCP-RT.csv", header=FALSE)
names(TCPdat) <- c("TCP", "time")

TCPdat[is.na(TCPdat)] <- 1
a <- TCPdat[1,2]
for (i in 0:nrow(TCPdat) ){
  TCPdat[i,2] <- TCPdat[i,2] - a
}

print(TCPdat)

q <- ggplot(TCPdat, aes(x = time, y = TCP)) + geom_line(color = "red") +
  labs(y = "Packets Transmitted")

print(q)

svg("Traffic-RT.svg")
print(q)
dev.off()
