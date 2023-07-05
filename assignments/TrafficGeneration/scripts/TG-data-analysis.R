# Written by Fraida Fund
# Adapted for Fabric by Tristan Jordan
# Addapted for Traffic Generation by Luis C

library(ggplot2)

TCPdat <- read.csv("~/TCP-TG.csv", header=FALSE)
names(TCPdat) <- c("TCP", "time")

TCPdat[is.na(TCPdat)] <- 1
a <- TCPdat[1,2]
for (i in 0:nrow(TCPdat) ){
  TCPdat[i,2] <- TCPdat[i,2] - a
}

print(TCPdat)

q <- ggplot(TCPdat, aes(x = time, y = TCP)) + geom_line(color = "cyan") +
  labs(y = "Packets Transmitted")

print(q)

svg("Traffic-TG.svg")
print(q)
dev.off()
