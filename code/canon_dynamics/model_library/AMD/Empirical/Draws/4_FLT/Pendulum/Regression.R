## Normally data would be imported from a spreadsheet using variants of the following commands
SD<-read.table("c:\\writing\\Papers\\Kalman\\Pendulum\\ComputedVelocityAcceleration.txt",header=T)
position<-SD[,2]
velocity<-SD[,3]
acceleration<-SD[,4]
	

fit <- lm(acceleration ~ position + velocity)
confint(fit)
