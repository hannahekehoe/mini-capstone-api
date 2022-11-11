class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_tax + calculated_subtotal
    order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      # subtotal: params["subtotal"],
      # tax: params["tax"],
      # total: params["total"],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if order.save
      render json: order.as_json
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    if @order.save
      render :show
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @orders = current_user.orders
    render :index
  end
end
