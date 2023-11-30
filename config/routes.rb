Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  post "/images" => "images#create"
  delete "/images/:id" => "images#destroy"

  post "/users" => "users#create"
  patch "/users/:id" => "users#update"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"

  post "/carted_products" => "carted_products#create"
  get "/carted_products" => "carted_products#index"
  delete "/carted_products/:id" => "carted_products#destroy"

  # get "/pacer", controller: "products", action: "pacer"
  # get "/hot_dog", controller: "products", action: "hot_dog"
  # get "/pathos", controller: "products", action: "pathos"
  # get "/soda_pop", controller: "products", action: "soda_pop"
  # get "/bubble_gum", controller: "products", action: "bubble_gum"
end
