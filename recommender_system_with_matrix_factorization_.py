import pandas as pd
import numpy as np
import sklearn
from sklearn.decomposition import TruncatedSVD
import warnings
def recc_fac():
    stock_df = pd.read_excel('/content/sample_data/stock_names.xlsx')
    rating_df = pd.read_excel('/content/sample_data/WatchlistSampleData.xlsx')
    stock_df.head(10)
    rating_df.head(10)
    combine_stock_rating = pd.merge(rating_df, stock_df, on='stockid')
    combine_stock_rating.head(30)
    stock_ratingCount = (combine_stock_rating.
         groupby(by = ['stockid'])['holding'].
         count().
         reset_index().
         rename(columns = {'holding': 'totalHoldingCount'})
         [['stockid', 'totalHoldingCount']]
        )
    stock_ratingCount.head(10)
    rating_with_totalRatingCount = combine_stock_rating.merge(stock_ratingCount, left_on = 'stockid', right_on = 'stockid', how = 'left')
    rating_with_totalRatingCount.head(10)
    user_rating = rating_with_totalRatingCount.drop_duplicates(['userId','stockid'])
    user_rating.head(10)
    stock_user_rating_pivot = user_rating.pivot(index = 'userId', columns = 'stockid', values = 'holding').fillna(0)
    stock_user_rating_pivot.head(10)
    X = stock_user_rating_pivot.values.T
    SVD = TruncatedSVD(n_components=12, random_state=100)
    matrix = SVD.fit_transform(X)
    matrix.shape
    warnings.filterwarnings("ignore",category =RuntimeWarning)
    corr = np.corrcoef(matrix)
    corr.shape
    stock_title = stock_user_rating_pivot.columns
    stock_title_list = list(stock_title)
    name="INFY"
    coffey_hands = stock_title_list.index(name)
    coffey_hands
    corr_coffey_hands  = corr[coffey_hands]
    finalrec = list(stock_title[(corr_coffey_hands >= 0.8)])
    return finalrec




