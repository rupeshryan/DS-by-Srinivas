#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")

airquality <- datasets::airquality

#top and bottom rows
head(airquality,10)
tail(airquality,10)

airquality[,c(1,2,3)]
df<-airquality[,-6]

head(df,10)

airquality$Ozone
airquality$Wind

#summary of data  - Mean, median, box plot details
summary(airquality$Ozone)
summary((airquality))

#################plotting the data################ 
plot(airquality$Ozone)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality)

plot(airquality$Wind, type = "l")
plot(airquality$Wind, xlab = "OZone Concentration", ylab = "number of instances", main = "Ozone levels in NY City", col = "blue", type = "p")


####Barplot####
barplot(airquality$Solar.R, ylab = "Radiation levels", main = "Solar Radiation in City", col = "red", horiz = F,axes = T)

##############Histogram##############
hist(airquality$Ozone)
hist(airquality$Ozone, main = "Ozone Levels in City", xlab = "Ozone Levels", col = "red")

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')

#####################Whole view partition###############
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3), mar=c(2,3,2,1),las=1, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "p")
plot(airquality$Ozone, type= "p")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col="blue",horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')
