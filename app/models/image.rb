class Image < ApplicationRecord
  belongs_to :product
  # def products
  #   Product.where(product_id: id)
  # end
end
