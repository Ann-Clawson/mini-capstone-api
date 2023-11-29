json.id order.id
json.user_id order.user_id
json.user order.user
json.carted_products order.carted_products.map do |carted_product|
  json.id carted_product.id
  json.quantity carted_product.quantity
  json.name carted_product.name
  json.status carted_product.status
end
json.subtotal order.subtotal
json.tax order.tax
json.total order.total
json.created_at order.created_at
json.updated_at order.updated_at
