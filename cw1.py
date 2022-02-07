
import requests

response = requests.get("https://api.nbp.pl/api/exchangerates/rates/a/jpy/2022-02-04/?format=json")
a = response.json()
print(a["rates"][0]["mid"])
