class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { in: 2..20 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :img_url, presence: true
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  def is_discounted?
    price <= 10 ? true : false
  end

  def tax
    (price * 0.09)
  end

  def total
    price + tax
  end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
