library(httr)
library(jsonlite)
library(lubridate)
library(quantmod)
library(alphavantager)
library(ggplot2)
library(corrplot)
library(twitteR)
library(dplyr)

## cool repo to look at later: https://github.com/lornamariak/TextMinningR

#Removes strings as factors 
options(stringsAsFactors = FALSE)

### Set API key obtained from site: https://www.alphavantage.co/support/#api-key ###

av_api_key("PCRN5TC83BHHF76D")

#time series data pull example

SPX <- av_get(symbol = "SPX", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")
RUT <- av_get(symbol = "RUT", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")
VIX <- av_get(symbol = "VIX", av_fun = "TIME_SERIES_DAILY", outputsize="full")



### Twitter API Feed Setup ###
## load credentials ##

consumer_key <- "lvbw4RsoDb39imfeStlCg2bFC"
consumer_secret<- "DWHbvASnuk1zK6k8iH5cWSy8ZmStqwpI1NjVReXVeeGsZC8ng9"
access_token <- "926558493796118528-65AzCHgdDKNvmatwEer08ilsKw6S91p"
access_secret <- "uBaxEzoOzUBtnmku2zYXAyNjfKRboBmLEsnuoUE1aDNjP"

#set up to authenticate

setup_twitter_oauth(consumer_key ,consumer_secret,access_token ,access_secret)


#fetch tweets associated with that hashtag , 12 tweets-n in 
#(en)glish-lang since the indicated date yy/mm/dd
tweets <- twitteR::searchTwitter("#$MSFT",n =12, lang="en", since = '2018-01-01')

#strip retweets
strip_retweets(tweets)

#convert to data frame using the twListtoDF function
df <- twListToDF(tweets) #extract the data frame save it locally
saveRDS(df, file = "tweets.rds")
df1 <- readRDS("mytweets.rds") #Look at RDS file opening?                                

#remove duplicates
dplyr::distinct(df1)





