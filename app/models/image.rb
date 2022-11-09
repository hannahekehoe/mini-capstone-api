class Image < ApplicationRecord
  def products
    Product.where(id: id)
  end
end
