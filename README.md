Problem Statement 3
#Suggest me a stock

# Overview of our solution​**

Our system will recommend stocks to a user by using hierarchical clustering and hybrid filtering of similar data of multiple users.​

 

### Tech Stack
  1. Flask
  2. Python
  3. Nltk
  4. ReactJs
  5. Azure

# Detailed Description of the solution​
This is a comprehensive stock suggestion model architecture that takes into account a variety of factors, including user data, stock preferences, risk profile, and news sentiment.​

### User data collection and preprocessing: 
The initial step is to gather information about the user, such as stock preferences, risk profiles, holdings, watchlists, and stock search trends. This data is then pre-processed in order to deal with missing data and resample the dataset.​

### Hierarchical clustering: 
The pre-processed data is then subjected to hierarchical clustering using agglomerative and divisive approaches. This will group stocks that are comparable.​
 
 ## User-User Based Collaborative Filtering
 The main idea behind User-User Based Collaborative Filtering is to identify users who have similar preferences and tastes and use their historical interactions to predict how a target user might rate or interact with a specific item. The steps involved in this approach are as follows:
 
 ### User-item interaction matrix: 
 Instead of users and items representing general preferences, in this case, users would represent individual investors, and items would represent stocks. The matrix would store historical interactions of users with various stocks, such as purchase history, holding duration, or even sentiment data related to the stocks.

### Similarity computation: 
The system calculates the similarity between investors based on their historical interactions with stocks. This could involve analyzing their trading patterns, common stock holdings, or any other relevant data to determine how closely their investment strategies align.


### measures to improve effeciency of approach
user_user_recs function will not only consider the closeness of users but also take into account the total stock interactions of users and stocks. Users with more stock interactions will be given higher priority in influencing recommendations for the target user, and stocks with the most total interactions will be recommended first. These enhancements aim to provide more consistent and relevant stock recommendations to users, leveraging the collective wisdom of users with higher market participation and suggesting stocks with proven popularity and interest among investors.

## Content Based Recommendations
Content-based recommendations based on a stock prediction model utilize the features and characteristics of individual stocks to make personalized recommendations to investors. Instead of relying solely on historical user-item interactions, this approach focuses on the intrinsic qualities of each stock and how well they match the preferences and risk profile of a particular investor.This is implemented by:

### Implement NMF
For NMF (non-negative matrix factorization), we need to obtain a design matrix. Here, we apply TfidfVectorizer to the combined text content. The transformation will return a matrix of size (documents x features). To reduce the size of the matrix and speed up computation, we set the maximum feature size to 5000, which will take the top 5000 best features that can contribute to our model.

Our strategy to recommend a user n stocks can be summarized as:

* Get a list of stock the user has already seen.
* For each seen stock, find n most similar stocks.
* Assemble all these stocks in a list and sort them in descending order by their similarity values.
* Select the top n stocks from this list as the recommendations.

## Hybrid filtering: 
The clustered data is then subjected to a hybrid filter that combines collaborative and content-based filtering. The filter combines item-based and user-based collaborative filtering for the part of collaborative filtering. The findings are then aggregated with random forest. The aggregated data is subsequently subjected to content-based screening. This filter leverages the user's stock search patterns to recommend equities that are similar to those they have previously searched for.​

## Ranks are being sorted: 
The rankings are then filtered to get a final list of suggested stocks.​

## Integration of the News API: 
A news API is used to receive current financial news. The news data is then pre-processed and sentimentally analysed.(Bing API used)​

## Analysis of Sentiment Intensity: 
A sentiment intensity analyzer is then used to analyse the sentiment of the news data for the currently selected equities. This will aid in determining whether the news is good, bad, or neutral.​

## Matrix Factorisation 
Matrix factorization is a popular technique used in recommendation systems, including stock market recommendation systems, to identify latent factors that explain the interactions between users and items (stocks in this case). The underlying assumption is that users' preferences and item characteristics can be represented in a lower-dimensional space, allowing the system to make more accurate predictions and recommendations.

## Final stock recommendations: 
The final list of recommended stocks is generated by combining the stock suggestion model's outputs with the sentiment analysis of the news data.​

​
