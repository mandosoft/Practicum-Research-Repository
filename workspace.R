library(httr)
library(jsonlite)
library(lubridate)
library(quantmod)
library(alphavantager)
library(ggplot2)
library(corrplot)

#Removes strings as factors 
options(stringsAsFactors = FALSE)

#Set API key obtained from site: https://www.alphavantage.co/support/#api-key

av_api_key("PCRN5TC83BHHF76D")

#time series data pull example

SPX <- av_get(symbol = "SPX", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")
RUT <- av_get(symbol = "RUT", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")
VIX <- av_get(symbol = "VIX", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")

corrplot(VIX) 











