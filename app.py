import requests
import datetime

# Simple method for getting gold prices
def get_gold_price():
    url = f"https://api.gold-api.com/price/XAU"
    response = requests.get(url)
    data = response.json()

    if response.status_code == 200:
        gold_price = data['price']
        updatedAt = data['updatedAt']

        print(f"Today's Date: {datetime.date.today()}")
        print(f"Current Gold Price (USD per ounce): {gold_price}")
        print(f"Price updated at: {updatedAt}")
    else:
        print("Failed to retrieve data. Check your API key and try again.")

get_gold_price()
