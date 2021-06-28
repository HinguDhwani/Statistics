setwd('C:/Users/Ab/Desktop/stats_final')
OverseasTrips = read.csv("C:/Users/Ab/Desktop/stats_final/OverseasTrips.csv",row.names = 1)  # read csv file

ts_trips_data<-ts(OverseasTrips, start = c(2012,1), frequency = 1)
start(ts_trips_data)

plot(ts_trips_data)

end(ts_trips_data)

ggseasonalplot(ts_trips_data, year.labels=TRUE, year.labels.left=TRUE)+ ylab("$ million") + ggtitle("Seasonal plot: overseas tripS")
