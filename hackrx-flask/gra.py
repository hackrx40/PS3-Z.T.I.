import yfinance as yf
import matplotlib.pyplot as plt

stc = {
    "HEROMOTOCO": 2,
    "BRITANNIA": 3,
    "KOTAKBANK": 4,
    "RELIANCE": 5,
    "BAJAJ-AUTO": 6,
    "TATACONSUM": 7,
    "ITC": 8,
    "WIPRO": 9,
    "SUNPHARMA": 10,
    "INDUSINDBK": 11,
    "ICICIBANK": 12,
    "JSWSTEEL": 13,
    "APOLLOHOSP": 14,
    "DIVISLAB": 15,
    "LT": 16,
    "COALINDIA": 17,
    "TITAN": 18,
    "ADANIPORTS": 19,
    "NESTLEIND": 20,
    "TECHM": 21,
    "AXISBANK": 22,
    "DRREDDY": 23,
    "ULTRACEMCO": 24,
    "HCLTECH": 25,
    "CIPLA": 26,
    "HDFC": 27,
    "BHARTIARTL": 28,
    "ADANIENT": 29,
    "TATASTEEL": 30,
    "MARUTI": 31,
    "NTPC": 32,
    "BAJAJFINSV": 33,
    "EICHERMOT": 34,
    "HDFCLIFE": 35,
    "TATAMOTORS": 36,
    "GRASIM": 37,
    "BPCL": 38,
    "SBIN": 39,
    "POWERGRID": 40,
    "INFY": 41,
    "HINDALCO": 42,
    "SBILIFE": 43,
    "M&M": 44,
    "ONGC": 45,
    "BAJFINANCE": 46,
    "HDFCBANK": 47,
    "HINDUNILVR": 48,
    "ASIANPAINT": 49,
    "TCS": 50,
    "UPL": 51,
}
stc = stc.keys()
import datetime


def grap():
    end = datetime.datetime.today().date()
    start = datetime.datetime.today().date() - datetime.timedelta(days=3)
    for stockSymbol in stc:
        stockSymbol += ".NS"
        data = yf.download(stockSymbol, start, end)
        # Plot the closing price
        plt.plot(data["Close"])
        # Add a title and labels to the axes
        plt.title(stockSymbol + " Stock Price")
        plt.xlabel("Date")
        plt.ylabel("Price")
        # Show the plot
        plt.savefig("../hackrx-frontend/public/graphs/" + stockSymbol + ".png")
        plt.close()
