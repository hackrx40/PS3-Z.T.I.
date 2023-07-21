Problem Statement 3
#Suggest me a stock
###Overview of our solution​**

Our system will recommend stocks to a user by using hierarchical clustering and hybrid filtering of similar data of multiple users.​

 

Tech Stack
  1. Flask
  2. Python
  3. Nltk
  4. ReactJs
  5. Azure

####Detailed Description of the solution​
This is a comprehensive stock suggestion model architecture that takes into account a variety of factors, including user data, stock preferences, risk profile, and news sentiment.​

User data collection and preprocessing: The initial step is to gather information about the user, such as stock preferences, risk profiles, holdings, watchlists, and stock search trends. This data is then pre-processed in order to deal with missing data and resample the dataset.​

Hierarchical clustering: The pre-processed data is then subjected to hierarchical clustering using agglomerative and divisive approaches. This will group stocks that are comparable.​

Individual rank assignment: Individual ranks are then awarded to the data depending on the outcomes of the collaborative and content-based filtering.​
