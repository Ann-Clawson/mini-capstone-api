class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  # many people can order the product, in this BUY NOW situation where you can only buy one item at a time and not put them in a cart
end
