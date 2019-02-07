library(httr)
library(jsonlite)
library(lubridate)
library(quantmod)
library(alphavantager)
library(ggplot2)
library(corrplot)
library(twitteR)

#Removes strings as factors 
options(stringsAsFactors = FALSE)

### Set API key obtained from site: https://www.alphavantage.co/support/#api-key ###

av_api_key("PCRN5TC83BHHF76D")

### Twitter API Feed Setup ###
## load credentials ##

consumer_key <- "lvbw4RsoDb39imfeStlCg2bFC"
consumer_secret<- "DWHbvASnuk1zK6k8iH5cWSy8ZmStqwpI1NjVReXVeeGsZC8ng9"
access_token <- "926558493796118528-65AzCHgdDKNvmatwEer08ilsKw6S91p"
access_secret <- "uBaxEzoOzUBtnmku2zYXAyNjfKRboBmLEsnuoUE1aDNjP"

#set up to authenticate

setup_twitter_oauth(consumer_key ,consumer_secret,access_token ,access_secret)

#time series data pull example

SPX <- av_get(symbol = "SPX", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")
RUT <- av_get(symbol = "RUT", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")
VIX <- av_get(symbol = "VIX", av_fun = "TIME_SERIES_DAILY", outputsize="full")







