from flask import Flask  
import requests
from user_recs import main_app
from gra import grap
from recc_w_fac import recc_fac
from getstk import stck_held
from flask import Flask, jsonify, request
import json
import yfinance as yf


app = Flask(__name__) #creating the Flask class object   

      
@app.route('/') #decorator drfines the   
def home():  
    suggested_stocks = main_app("C1")
    #grap(stk_name)
    return suggested_stocks

@app.route("/api/stock", methods=["POST"])
async def Stocks():
    stockSymbol = requests.json["symbol"]
    if stockSymbol=="yes":
        grap()
        
@app.route("/api/client", methods=["POST"])
async def client():
    name = requests.json["symbol"]
    return main_app(name)

@app.route("/api/wtlist", methods=["POST"])
async def wtlist():
    name = requests.json["symbol"]
    return recc_fac(name)

@app.route("/api/recc", methods=["POST"])
async def recc():
    name = requests.json["symbol"]
    return recc_fac(name)
    
# Fetch realtime stock price
@app.route("/api/price", methods=["POST"])
async def price():
    stockSymbol = request.json["symbol"]
    price = str(yf.Ticker(stockSymbol).info["currentPrice"])
    return price

  
#if __name__ =='__main__':  
    app.run(debug = False,port=71)  