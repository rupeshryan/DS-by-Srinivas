####Class assignment####
e_quakes<-datasets::quakes

head(e_quakes,10)
tail(e_quakes,10)

e_quakes[,c(1,2,4,5)]
e_quakes[1,-3]

summary(e_quakes$mag)
summary(e_quakes)


plot(e_quakes$depth)
plot(e_quakes$depth,e_quakes$mag, type = "p")
plot(e_quakes)
plot(e_quakes$stations, type = "p")

plot(e_quakes$lat, e_quakes$long, xlab = "Latitude", ylab = "Longitude", main = "Index of earth", col = "blue")


barplot(e_quakes$mag, main = "Magnitude if quake", ylab = "Magnitude", horiz = T, axes = T, col = "red")

hist(e_quakes$depth)
hist(e_quakes$stations, main = "earthqauckes", xlab = "Number of sattions", col = "blue")

boxplot(e_quakes$mag)
boxplot(e_quakes[,3:4])


par(mfrow=c(3,3) , mar=c(2,1,2,1), las= 0, bty= "o" )
plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$lat, type = "l")
plot(e_quakes$mag, type = "l")
barplot(e_quakes$lat, main = 'Ozone Concenteration in air',
        xlab = 'Latitude', col='green',horiz = TRUE)
hist(e_quakes$mag)
boxplot(e_quakes[,0:4], main='Multiple Box plots')
boxplot(e_quakes$stations)
boxplot.stats(e_quakes$mag)

################Standard deviation####
sd(e_quakes$mag,na.rm = T) #we have to get rid of NA values hence we use na.rm=T
var(e_quakes)
skewness(e_quakes$mag) #load the package
kurtosis(e_quakes$depth)
