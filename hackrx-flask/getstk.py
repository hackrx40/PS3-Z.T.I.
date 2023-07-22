import pandas as pd


def stck_held(cl_name):
    stock_df = pd.read_excel("./new.xlsx")
    print("Printing")
    # print(stock_df[cl_name].dropna())
    return stock_df[cl_name].dropna().to_list()
