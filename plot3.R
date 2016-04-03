## Read the data
elec<-read.table("./exdata-data-household_power_consumption/
                 household_power_consumption.txt",header=TRUE,sep=";",
                 na.strings="?",stringsAsFactors=FALSE)
elecdates<-subset(elec,elec$Date=="1/2/2007"|elec$Date=="2/2/2007")
elecdates<-mutate(elecdates,datetime=paste(elecdates$Date,elecdates$Time,sep=" ")
for(i in 3:9){
elecdates[,i]<-as.numeric(elecdates[,i])    
}
## Plot the data
plot(elecdates$datetime,elecdates$Sub_metering_1,type="n",
     xlab="",ylab="Energy sub meterting")
lines(elecdates$datetime,elecdates$Sub_metering_1)
lines(elecdates$datetime,elecdates$Sub_metering_2,col="red")
lines(elecdates$datetime,elecdates$Sub_metering_3,col="blue")
legend("topright",names(elecdates)[c(7,8,9)],col=c("black","red","blue"),lty=1,bty="n",
       inset=c(.1,0))
## Write the data to a png file
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()