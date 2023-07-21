from flask import Flask  
import requests
import json
import nltk, re
import pandas as pd
from nltk.sentiment.vader import SentimentIntensityAnalyzer

app = Flask(__name__) #creating the Flask class object   
 
def news():
    subscription_key = "ebd7c7685ef245baa503d3fdbf67de0e"
    search_term = "Microsoft"
    search_url = "https://api.bing.microsoft.com/v7.0/news/search"
    headers = {"Ocp-Apim-Subscription-Key" : subscription_key}
    params  = {"q": search_term, "textDecorations": True, "textFormat": "HTML"}
    response = requests.get(search_url, headers=headers, params=params)
    response.raise_for_status()
    search_results = json.loads(json.dumps(response.json()))
    
    descriptions = [article["description"] for article in search_results["value"]]
    for desc in descriptions:
        print(desc)
    return descriptions
    
        
@app.route('/') #decorator drfines the   
def home():  
       news_list=news() 
  
if __name__ =='__main__':  
    app.run(debug = False)  