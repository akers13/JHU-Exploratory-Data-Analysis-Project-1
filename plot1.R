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
hist(elecdates$Global_active_power,col="red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)",cex.axis=0.95)
## Write the data to a png file
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()