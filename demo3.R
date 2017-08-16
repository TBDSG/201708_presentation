setwd('/Users/asherif844/Dropbox/Python/TBDSUG/')


dataframe <- read.csv(file="tweet_dataframe.csv", header=TRUE, sep=",")

head(dataframe)

query1= ts(dataframe$followers)
plot.ts(query1,xlab = 'Count', ylab = 'Followers', main = 'Time Series')
forecasts <- HoltWinters(query1, beta=FALSE, gamma=FALSE)
plot(forecasts)

install.packages('forecast')
library('forecast')
forecasts_8periods <- forecast.HoltWinters(forecasts, h=8)
plot.forecast(forecasts_8periods, ylab='Followers', xlab = 'Count', main = 'Forecasting 8 periods')
