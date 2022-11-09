class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 10..500 }
  # validates :image_url, presence: true
  # validates :inventory, numericality: { greater_than: 0 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def image
    Product.find_by(id: id)
  end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def is_discounted?
    price <= 10
  end

  def tax
    tax = price * 0.08
  end

  def total
    total = tax + price
  end
end
