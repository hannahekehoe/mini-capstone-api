require "http"

puts "Hello and welcome to Hannah's Stationery Store. Here you will find a tastefully curaed selection of writing implements, stationery, and related accessories."

response = HTTP.get("http://localhost:3000/products.json")
products = response.parse(:json)
pp products
