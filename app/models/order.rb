class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  # belongs_to :product
  # many people can order the product, in a BUY NOW situation where you can only buy one item at a time and not put them in a cart
end
