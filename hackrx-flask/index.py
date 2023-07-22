from flask import Flask, jsonify, request
import requests
import json
import nltk, re
import pandas as pd
from nltk.sentiment.vader import SentimentIntensityAnalyzer
import yfinance as yf
from pymongo import MongoClient

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


stock = "AAPL"
data = yf.download(stock, start="2023-04-01", end="2023-07-01")


@app.route("/api/graph")
def index():
    data_json = json.dumps(data.to_dict())
    return data_json


@app.route("/api/news", methods=["POST"])
def home():
    search_term = request.json["search_term"]
    news_list = news(search_term)
    return news_list


# Fetch realtime stock price
@app.route("/api/stock", methods=["POST"])
async def getStocks():
    stockSymbol = request.json["symbol"]
    price = yf.Ticker(stockSymbol).info["currentPrice"]

    return str(price)


# Run the flask app
if __name__ == "__main__":
    app.run(debug=True)
