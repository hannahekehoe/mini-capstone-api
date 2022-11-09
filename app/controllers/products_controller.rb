class ProductsController < ApplicationController
  def show
    product = Product.find_by(id: params["id"])
    @product = product
    render :show
  end

  def index
    product = Product.all
    @product = product
    render :index
  end

  #Hard coded version
  # def create
  #   product = Product.new(
  #     name: "Cat Stamp",
  #     price: 12,
  #     image_url: "https://cdn.shopify.com/s/files/1/1403/8979/products/Midori-Paintable-Stamp-Pre-Inked-Cat-4_9e0fc68d-d51a-4ab4-94d3-aa32c7a4a6d7_1024x1024.jpg?v=1646468028",
  #     description: "This Midori Paintable Stamp is pre-inked for easy usage and it features a cat design. Since the oil ink is already soaked into the stamp you can start using it right away and it can give you at least 1000 presses. Use both hands and apply light pressure when stamping for best results. Have fun writing inside a curled-up cat, color with water-based markers, and decorate your journal or notebook.")
  #   product.save
  #   render json: product.as_json
  # end

  #Non-hard coded version taking in parameters from end-user
  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      inventory: params["inventory"]
    )
    if @product.save
      render :show
    else
      render json: (errors: product.errors.full_messages), status: 418
    end
  end

  #Updating a variable if the new value doesn't match the original value
  def update
    product = Product.find_by(id: params["id"])
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.delete(id: params["id"])
    render json: { message: "DESTRUCTION SUCCESSFUL" }
  end

  # def fountain_pen
  #   products = Product.find_by(name: "Fountain Pen")
  #   render json: products.as_json
  # end

  # def notebook
  #   products = Product.find_by(name: "Notebook")
  #   render json: products.as_json
  # end

  # def stationery_set
  #   products = Product.find_by(name: "Stationery Set")
  #   render json: products.as_json
  # end

end
