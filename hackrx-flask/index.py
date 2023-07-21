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


@app.route("/api/news", methods=["POST"])
def home():
    search_term = request.json["search_term"]
    news_list = news(search_term)
    return news_list


# Fetch realtime stock data
@app.route("/api/stock", methods=["POST"])
async def getStocks():
    stockSymbol = request.json["symbol"]
    price = yf.Ticker(stockSymbol).info["currentPrice"]

    return str(price)


@app.route("/api/send-stocks", methods=["POST"])
def sendStocks():
    stocks_obj = request.json
    client = MongoClient(
        "mongodb+srv://admin:adminpass@hackrx.nt7oey0.mongodb.net/?retryWrites=true&w=majority"
    )
    db = client["hackrx"]
    collection = db["stocks"]
    collection.insert_one(stocks_obj)
    return "Data added to MongoDB"


if __name__ == "__main__":
    app.run(debug=False)
