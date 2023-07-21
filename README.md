Problem Statement 3
#Suggest me a stock
###Overview of our solution​**

Our system will recommend stocks to a user by using hierarchical clustering and hybrid filtering of similar data of multiple users.​

 

## Tech Stack
  1. Flask
  2. Python
  3. Nltk
  4. ReactJs
  5. Azure

#### Detailed Description of the solution​
This is a comprehensive stock suggestion model architecture that takes into account a variety of factors, including user data, stock preferences, risk profile, and news sentiment.​

## User data collection and preprocessing: 
The initial step is to gather information about the user, such as stock preferences, risk profiles, holdings, watchlists, and stock search trends. This data is then pre-processed in order to deal with missing data and resample the dataset.​

## Hierarchical clustering: 
The pre-processed data is then subjected to hierarchical clustering using agglomerative and divisive approaches. This will group stocks that are comparable.​

## Individual rank assignment:
Individual ranks are then awarded to the data depending on the outcomes of the collaborative and content-based filtering.​

## Hybrid filtering: 
The clustered data is then subjected to a hybrid filter that combines collaborative and content-based filtering. The filter combines item-based and user-based collaborative filtering for the part of collaborative filtering. The findings are then aggregated with random forest. The aggregated data is subsequently subjected to content-based screening. This filter leverages the user's stock search patterns to recommend equities that are similar to those they have previously searched for.​

## Ranks are being sorted: 
The rankings are then filtered to get a final list of suggested stocks.​

## Integration of the News API: 
A news API is used to receive current financial news. The news data is then pre-processed and sentimentally analysed.(Bing API used)​

​
