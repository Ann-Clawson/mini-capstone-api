Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "all_products"
  get "/products/:id" => "products#one_product"
  # get "/pacer", controller: "products", action: "pacer"
  # get "/hot_dog", controller: "products", action: "hot_dog"
  # get "/pathos", controller: "products", action: "pathos"
  # get "/soda_pop", controller: "products", action: "soda_pop"
  # get "/bubble_gum", controller: "products", action: "bubble_gum"
end
