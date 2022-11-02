class ProductsController < ApplicationController
  def fountain_pen
    products = Product.find_by(name: "Fountain Pen")
    render json: products.as_json
  end

  def notebook
    products = Product.find_by(name: "Notebook")
    render json: products.as_json
  end

  def stationery_set
    products = Product.find_by(name: "Stationery Set")
    render json: products.as_json
  end
end
