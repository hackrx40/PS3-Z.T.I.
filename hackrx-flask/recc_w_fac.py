import pandas as pd
import numpy as np
from sklearn.decomposition import TruncatedSVD
import warnings


def recc_fac(name):
    stock_df = pd.read_excel("./stock_names1.xlsx")
    rating_df = pd.read_excel("./WatchlistSampleData1.xlsx")
    combine_stock_rating = pd.merge(rating_df, stock_df, on="stockid")
    stock_ratingCount = (
        combine_stock_rating.groupby(by=["stockid"])["holding"]
        .count()
        .reset_index()
        .rename(columns={"holding": "totalHoldingCount"})[
            ["stockid", "totalHoldingCount"]
        ]
    )
    rating_with_totalRatingCount = combine_stock_rating.merge(
        stock_ratingCount, left_on="stockid", right_on="stockid", how="left"
    )
    user_rating = rating_with_totalRatingCount.drop_duplicates(["userId", "stockid"])
    stock_user_rating_pivot = user_rating.pivot(
        index="userId", columns="stockid", values="holding"
    ).fillna(0)
    X = stock_user_rating_pivot.values.T
    SVD = TruncatedSVD(n_components=12, random_state=100)
    matrix = SVD.fit_transform(X)
    matrix.shape
    warnings.filterwarnings("ignore", category=RuntimeWarning)
    corr = np.corrcoef(matrix)
    corr.shape
    stock_title = stock_user_rating_pivot.columns
    stock_title_list = list(stock_title)
    coffey_hands = stock_title_list.index(name)
    coffey_hands
    corr_coffey_hands = corr[coffey_hands]
    finalrec = list(stock_title[(corr_coffey_hands >= 0.5)])
    return finalrec
