import pandas as pd
import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)
import re
import nltk
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
from nltk.tokenize import word_tokenize
nltk.download(['punkt', 'stopwords'])
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import NMF
from sklearn.preprocessing import normalize
warnings.simplefilter(action='ignore', category=FutureWarning)
df = pd.read_excel('./WatchlistSampleData.xlsx')
df_content = pd.read_excel('./stock_names.xlsx')
import requests
import json
from nltk.sentiment.vader import SentimentIntensityAnalyzer
a=open("keyy.txt","r")
subscription_key = a.readline()+"0e"

stc={'HEROMOTOCO': 2, 'BRITANNIA': 3, 'KOTAKBANK': 4, 'RELIANCE': 5, 'BAJAJ-AUTO': 6, 'TATACONSUM': 7, 'ITC': 8,\
     'WIPRO': 9, 'SUNPHARMA': 10, 'INDUSINDBK': 11, 'ICICIBANK': 12, 'JSWSTEEL': 13, 'APOLLOHOSP': 14, 'DIVISLAB': 15,\
     'LT': 16, 'COALINDIA': 17, 'TITAN': 18, 'ADANIPORTS': 19, 'NESTLEIND': 20, 'TECHM': 21, 'AXISBANK': 22, 'DRREDDY': 23,\
     'ULTRACEMCO': 24, 'HCLTECH': 25, 'CIPLA': 26, 'HDFC': 27, 'BHARTIARTL': 28, 'ADANIENT': 29, 'TATASTEEL': 30,\
     'MARUTI': 31, 'NTPC': 32, 'BAJAJFINSV': 33, 'EICHERMOT': 34, 'HDFCLIFE': 35, 'TATAMOTORS': 36, 'GRASIM': 37,\
     'BPCL': 38, 'SBIN': 39, 'POWERGRID': 40, 'INFY': 41, 'HINDALCO': 42, 'SBILIFE': 43, 'M&M': 44, 'ONGC': 45,\
     'BAJFINANCE': 46, 'HDFCBANK': 47, 'HINDUNILVR': 48, 'ASIANPAINT': 49, 'TCS': 50, 'UPL': 51}

def main_app(user,df_content=df_content,df=df):
    def get_top_stock(n, df=df):
        '''
        INPUT:
        n - (int) the number of top stocks to return
        df - (pandas dataframe) df as defined at the top of the notebook
    
        OUTPUT:
        top_stocks - (list) A list of the top 'n' stock titles
    
        '''
        top_articles = df['stockId'].value_counts().index[:n].tolist()
    
        return top_articles # Return the top article titles from df (not df_content)
    
    def get_top_stock_ids(n, df=df):
        '''
        INPUT:
        n - (int) the number of top articles to return
        df - (pandas dataframe) df as defined at the top of the notebook
    
        OUTPUT:
        top_stocks - (list) A list of the top 'n' user ids
    
        '''
        top_articles = df['userId'].value_counts().index[:n].tolist()
        top_articles = [str(x) for x in top_articles]
    
        return top_articles # Return the top article ids
    
    # create the user-article matrix with 1's and 0's
    
    def create_user_item_matrix(df):
        '''
        INPUT:
        df - pandas dataframe with article_id, title, user_id columns
    
        OUTPUT:
        user_item - user item matrix
    
        Description:
        Return a matrix with user ids as rows and stock ids on the columns with 1 values where a user interacted with
        the stock and a 0 otherwise
        '''
        # Create user item matrix
        user_item = df.groupby(['stockId', 'userId'])['stkid'].count().unstack()
    
        # Turn NAN into 0s and others into 1s
        user_item = 1 - user_item.isna().astype(int)
    
        return user_item # return the user_item matrix
    
    user_item = create_user_item_matrix(df)
    
    def find_similar_users(userId, user_item=user_item):
        '''
        INPUT:
        user_id - (int) a user_id
        user_item - (pandas dataframe) matrix of users by stocks:
                    1's when a user has invested, 0 otherwise
    
        OUTPUT:
        similar_users - (list) an ordered list where the closest users (largest dot product users)
                        are listed first
    
        Description:
        Computes the similarity of every pair of users based on the dot product
        Returns an ordered
    
        '''
    
        # compute similarity of each user to the provided user
        user_item=user_item.transpose()
    
        similarity = user_item.loc[userId].dot(user_item.T)
        # sort by similarity
        similarity = similarity.sort_values(ascending=False)
    
        # create list of just the ids
        most_similar_users = similarity.keys().tolist()
        # remove the own user's id
        most_similar_users.remove(userId)
    
        return most_similar_users # return a list of the users in order from most to least similar
    def get_stock_names(stockId, df=df):
        '''
        INPUT:
        stock_ids - (list) a list of stock ids
        df - (pandas dataframe) df as defined at the top of the notebook
    
        OUTPUT:
        stock_names - (list) a list of stock names associated with the list of stock ids
                        (this is identified by the title column)
        '''
        stock_names = df['stockId'].drop_duplicates().tolist()
    
        return stock_names # Return the stock names associated with list of stock ids
    
    
    
    
    def get_user_stock(userId, user_item=user_item):
    
        '''
        INPUT:
        user_id - (int) a user id
        user_item - (pandas dataframe) matrix of users by stocks:
                    1's when a user has invested, 0 otherwise
    
        OUTPUT:
        stock_ids - (list) a list of the stocks ids seen by the user
        stock_names - (list) a list of stock names associated with the list of stock ids
                        (this is identified by the doc_full_name column in df_content)
    
        Description:
        Provides a list of the stock_ids and stock titles that have been seen by a user
        '''
        n=user_item[userId].tolist()
        user_item=user_item.transpose()
        l=user_item.columns.values.tolist()
    
        k=""
        j=-1
        for i in n:
            j+=1
            if i!=0:
                k+=str(l[j])+","
        k=k.split(",")
        l=""
        for i in k:
            if i!='':
                l+=str(stc[i])+","
        l=l[:-1]
        l=l.split(",")
        return l,k #stock_ids, return the ids and names
    
    
    def user_user_recs(userId, m=10):
        '''
        INPUT:
        user_id - (int) a user id
        m - (int) the number of recommendations you want for the user
    
        OUTPUT:
        recs - (list) a list of recommendations for the user
    
        Description:
        Loops through the users based on closeness to the input user_id
        For each user - finds stocks the user hasn't seen before and provides them as recs
        Does this until m recommendations are found
    
        Notes:
        Users who are the same closeness are chosen arbitrarily as the 'next' user
    
        For the user where the number of recommended stocks starts below m
        and ends exceeding m, the last items are chosen arbitrarily
    
        '''
        # Find a list of the articles that have been seen by the user
        stock_ids = get_stock_names(userId)
    
        # Find similar users
        similar_user_ids = find_similar_users(userId)
    
        # Find recommendations
        recs = []
        for similar_user_id in similar_user_ids:
            similar_user_stock_ids, _ = get_user_stock(similar_user_id)
            for stock_id in similar_user_stock_ids:
                if stock_id not in stock_ids:
                    recs.append(stock_id)
                if len(recs) >= m:
                    break
            if len(recs) >= m:
                break
    
        return recs # return your recommendations for this user_id
    
    def get_top_sorted_users(userId, df=df, user_item=user_item):
        '''
        INPUT:
        user_id - (int)
        df - (pandas dataframe) df as defined at the top of the notebook
        user_item - (pandas dataframe) matrix of users by stocks:
                1's when a user has invested, 0 otherwise
    
    
        OUTPUT:
        neighbors_df - (pandas dataframe) a dataframe with:
                        neighbor_id - is a neighbor user_id
                        similarity - measure of the similarity of each user to the provided user_id
                        num_interactions - the number of stocks viewed by the user
    
        Other Details - sort the neighbors_df by the similarity and then by number of interactions where
                        highest of each is higher in the dataframe
    
        '''
        similar_user_ids = find_similar_users(userId)
        neighbors_dict = {'neighbor_id': [], 'similarity': [], 'num_interactions': []}
        user_item=user_item.transpose()
        for similar_user_id in similar_user_ids:
            neighbors_dict['neighbor_id'].append(similar_user_id)
            neighbors_dict['similarity'].append(user_item.loc[userId].dot(user_item.loc[similar_user_id]))
            neighbors_dict['num_interactions'].append(user_item.loc[similar_user_id].sum())
    
        neighbors_df = pd.DataFrame(neighbors_dict).sort_values(['similarity', 'num_interactions'], ascending=[False, False])
    
        return neighbors_df # Return the dataframe specified in the doc_string
    
    
    def user_user_recs_part2(userId, m=10):
        '''
        INPUT:
        user_id - (int) a user id
        m - (int) the number of recommendations you want for the user
    
        OUTPUT:
        recs - (list) a list of recommendations for the user by stock id
        rec_names - (list) a list of recommendations for the user by stock title
    
        Description:
        Loops through the users based on closeness to the input user_id
        For each user - finds stocks the user hasn't invested before and provides them as recs
        Does this until m recommendations are found
    
        Notes:
        * Choose the users that have the most total stocks interactions
        before choosing those with fewer stocks interactions.
    
        * Choose stocks with the stocks with the most total interactions
        before choosing those with fewer total interactions.
    
        '''
        # Find a list of the stocks that have been seen by the user
        stock_ids, _ = get_user_stock(userId)
    
        # Find similar users
        similar_user_ids = get_top_sorted_users(userId)['neighbor_id'].tolist()
    
        # Find recommendations
        recs = []
        for similar_user_id in similar_user_ids:
            similar_user_stock_ids, _ = get_user_stock(similar_user_id)
            for StockId in similar_user_stock_ids:
                if StockId not in stock_ids:
                    recs.append(StockId)
                if len(recs) >= m:
                    break
            if len(recs) >= m:
                break
    
        rec_names = get_stock_names(recs)
    
        return recs, rec_names
    
    df_content.fillna("", inplace=True)
    df_cont = pd.read_excel('./fullnamestocks.xlsx')
    # Give a higher weight on 'doc_full_name'
    df_content['Stocknames'] = (df_cont['Full Name'] + " ") * 2 + \
                        df_content['Sector']
    df_content.head()
    def tokenize(text):
        '''
        INPUT:
        text - (str) raw text data
    
        OUTPUT:
        tokens - (list) a list of strings after tokenization
    
        Description:
        Transform raw text data to a bag of words
        '''
        # Remove websites and email addresses
        text = re.sub("((\S+)?(http(s)?)(\S+))|((\S+)?(www)(\S+))|((\S+)?(\@)(\S+)?)", " ", text)
    
        # Normalize case and remove punctuation
        text = re.sub("[^a-zA-Z]", " ", text.lower())
    
        # Tokenize text
        tokens = word_tokenize(text)
    
        # Stem and remove stop words
        tokens = [PorterStemmer().stem(word)
                  for word in tokens if word not in stopwords.words("english")]
    
        # Make sure there is no one letter words
        tokens = [word for word in tokens if len(word) > 1]
    
        return tokens
    df_content= df_content.head(51)
    df_content['Stocknames'].fillna('', inplace=True)
    tfidf_vectorizer = TfidfVectorizer(tokenizer=tokenize, max_features=5000)
    tfidf = tfidf_vectorizer.fit_transform(df_content['Stocknames'])
    # Obtain a NMF model
    num_topics = 20
    nmf = NMF(n_components=num_topics, random_state=0)
    nmf_features = nmf.fit_transform(tfidf)
    def get_nmf_topics(vectorizer=tfidf_vectorizer, model=nmf, n_top_words=20):
        '''
        INPUT:
        vectorizer - (object) an object that vectorize documents
        model - (object) a model built for topic extraction
        n_top_words - (int) the number of top words in each topic
    
        OUTPUT:
        word_df - (pandas datafram) top words for each topic
    
        Description:
        Display the latent article topics using NMF
        '''
        feat_names = vectorizer.get_feature_names_out()
    
        word_dict = {};
        for i in range(num_topics):
            # Obtain the largest values for each topic, and add the words they map to into the dictionary
            words_ids = model.components_[i].argsort()[:-n_top_words-1:-1]
            words = [feat_names[key] for key in words_ids]
            word_dict['Topic ' + '{:02d}'.format(i+1)] = words;
    
        word_df = pd.DataFrame(word_dict)
    
        return word_df
    norm_features = normalize(nmf_features)
    df1 = pd.read_excel('./stock_names.xlsx')
    df1=df1.head(51)
    nmf_feat_df = pd.DataFrame(norm_features, index=df1['Stocknames'].tolist())
    def get_similar_stock(stock_name, n_top, vectorizer=tfidf_vectorizer, model=nmf, feat_df=nmf_feat_df):
        similarities = feat_df.dot(feat_df.loc[stock_name.upper()])
        similar_stock = similarities.sort_values(ascending=False).iloc[1:n_top+1]
        return similar_stock
    def make_content_recs(userId,
                          stock_list=None,
                          n_recs=10,
                          user_item=user_item,
                          df=df,
                          vectorizer=tfidf_vectorizer,
                          model=nmf,
                          feat_df=nmf_feat_df):
        if not stock_list:
              _, seen_stock_names = get_user_stock(userId)
        else:
            seen_stock_ids = stock_list
            seen_stock_names = get_stock_names(seen_stock_ids)
        # Find n_recs similar articles in df_content for each article the user has seen
        similar_stock = pd.Series([])
        for stock_name in seen_stock_names:
            if  stock_name != "":
              sims = get_similar_stock(stock_name, n_recs)
              similar_stock = similar_stock.append(sims)
        rec_names = similar_stock.sort_values(ascending=False).drop_duplicates().index.tolist()[:n_recs]
        return rec_names
    '''
    mian input
    '''
    suggested_stocks =make_content_recs(user)
    
    search_term = "Microsoft"
    search_url = "https://api.bing.microsoft.com/v7.0/news/search"
    headers = {"Ocp-Apim-Subscription-Key" : subscription_key}
    params  = {"q": search_term, "textDecorations": True, "textFormat": "HTML"}
    response = requests.get(search_url, headers=headers, params=params)
    response.raise_for_status()
    search_results = json.loads(json.dumps(response.json()))
    
    descriptions = [article["description"] for article in search_results["value"]]
    #from IPython.display import HTML
    #rows = "\n".join(["<tr><td>{0}</td></tr>".format(desc)
     #                 for desc in descriptions])
    d={}
    l=[]
    j=1
    li=['HEROMOTOCO', 'BRITANNIA', 'KOTAKBANK', 'RELIANCE', 'BAJAJ-AUTO', 'TATACONSUM', 'ITC', 'WIPRO', 'SUNPHARMA', 'INDUSINDBK', 'ICICIBANK', 'JSWSTEEL', 'APOLLOHOSP', 'DIVISLAB', 'LT', 'COALINDIA', 'TITAN', 'ADANIPORTS', 'NESTLEIND', 'TECHM', 'AXISBANK', 'DRREDDY', 'ULTRACEMCO', 'HCLTECH', 'CIPLA', 'HDFC', 'BHARTIARTL', 'ADANIENT', 'TATASTEEL', 'MARUTI', 'NTPC', 'BAJAJFINSV', 'EICHERMOT', 'HDFCLIFE', 'TATAMOTORS', 'GRASIM', 'BPCL', 'SBIN', 'POWERGRID', 'INFY', 'HINDALCO', 'SBILIFE', 'M&M', 'ONGC', 'BAJFINANCE', 'HDFCBANK', 'HINDUNILVR', 'ASIANPAINT', 'TCS', 'UPL']
    for i in range (len(li)):
        li[i]=li[i].lower()
    for desc in descriptions:
        for i in (desc.split(" ")):
            if i.lower() in li:
                l.append(i)
                d[j]=desc
                j+=1
    df=d.values()
    
    for row in df:
      score = SentimentIntensityAnalyzer().polarity_scores(row)
      neg = score['neg']
      #neu = score['neu']
      pos = score['pos']
      if neg > pos:
        for i in l:
          if i in suggested_stocks:
            suggested_stocks.remove(i)
    for i in suggested_stocks:
      print(i)
    return suggested_stocks
