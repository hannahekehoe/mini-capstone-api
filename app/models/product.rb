class Product < ApplicationRecord
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
