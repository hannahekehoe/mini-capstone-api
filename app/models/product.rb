class Product < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
