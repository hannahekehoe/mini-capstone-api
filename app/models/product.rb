class Product < ApplicationRecord
  has_many :orders
  has_many :images
  belongs_to :supplier
  has_many :category_products
  has_many :categories, through: :category_products

  ###long method below, shortcut above
  # def categories
  #   category_products.map do |category_product|
  #     category_product.category
  #   end
  # end

  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 10..500 }
  # validates :image_url, presence: true
  # validates :inventory, numericality: { greater_than: 0 }

  #see belongs_to method above
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # see has_many method above
  # def images
  #   Image.where(product_id: id)
  # end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def is_discounted?
    price <= 10
  end

  def subtotal
    subtotal = price * order.quantity
  end

  def tax
    tax = price * 0.08
  end

  def total
    total = tax + price
  end
end
