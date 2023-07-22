from flask import Flask, jsonify, request
import json
import nltk, re
import pandas as pd
from nltk.sentiment.vader import SentimentIntensityAnalyzer
import yfinance as yf
from pymongo import MongoClient
from user_recs import main_app
from gra import grap
import requests
from recc_w_fac import recc_fac
from getstk import stck_held
from flask import Flask, jsonify, request
import json


import os
from dotenv import load_dotenv

load_dotenv()

# redis_password = os.getenv("REDIS_PASS")


app = Flask(__name__)  # creating the Flask class object


def news(search_term):
    subscription_key = "ebd7c7685ef245baa503d3fdbf67de0e"
    search_term = search_term or "Microsoft"
    search_url = "https://api.bing.microsoft.com/v7.0/news/search"
    headers = {"Ocp-Apim-Subscription-Key": subscription_key}
    params = {"q": search_term, "textDecorations": True, "textFormat": "HTML"}
    response = requests.get(search_url, headers=headers, params=params)
    response.raise_for_status()
    search_results = json.loads(json.dumps(response.json()))

    descriptions = [article["description"] for article in search_results["value"]]
    for desc in descriptions:
        print(desc)
    return descriptions


@app.route("/api/news", methods=["POST"])
def home():
    search_term = request.json["search_term"]
    news_list = news(search_term)
    return news_list


# Stock price
@app.route("/api/stock", methods=["POST"])
async def getStocks():
    stockSymbol = request.json["symbol"]
    price = yf.Ticker(stockSymbol).info["currentPrice"]
    return str(price)


# Live Graph
@app.route("/api/graph", methods=["POST"])
async def Stocks():
    stockSymbol = request.json["symbol"]
    result = await grap()
    return result


# Stocks Held
@app.route("/api/held", methods=["POST"])
async def client():
    user = request.json["user"]
    # print("Accessed stocks held function\n")
    result = stck_held(user)
    return result


# Waitlist
@app.route("/api/watchlist", methods=["POST"])
async def wtlist():
    user = request.json["user"]
    stocks = stck_held(user)
    result = recc_fac(stocks[3])
    return result


# Recommended
@app.route("/api/recommended", methods=["POST"])
async def recc():
    user = request.json["user"]
    return main_app(user)


# Fetch realtime stock price
@app.route("/api/price", methods=["POST"])
async def price():
    stockSymbol = request.json["symbol"]
    price = str(yf.Ticker(stockSymbol).info["currentPrice"])
    return price


if __name__ == "__main__":
    app.run(debug=True)
