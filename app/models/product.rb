class Product < ApplicationRecord
  def is_discounted?
    price <= 10 ? true : false
  end

  def tax
    (price * 0.09).floor
  end

  def total
    price + tax
  end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
