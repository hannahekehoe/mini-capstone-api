class ProductsController < ApplicationController
  def one_product
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end

  def all_products
    products = Product.all
    render json: products.as_json
  end

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
