require "http"

response = HTTP.get("http://localhost:3000/all_products")
products = response.parse(:json)
pp products
