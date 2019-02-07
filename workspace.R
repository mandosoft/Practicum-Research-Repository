library(httr)
library(jsonlite)
library(lubridate)
library(quantmod)
library(alphavantager)

#Removes strings as factors 
options(stringsAsFactors = FALSE)

#Set API key obtained from site: https://www.alphavantage.co/support/#api-key

av_api_key("PCRN5TC83BHHF76D")

#time series data pull example

MSFT <- av_get(symbol = "MSFT", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")

plot(MSFT)
View(MSFT)


