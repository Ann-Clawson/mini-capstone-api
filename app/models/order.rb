class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  # many people can order the product, in this BUY NOW situation where you can only buy one item at a time and not put them in a cart
end
