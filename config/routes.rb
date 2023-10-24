Rails.application.routes.draw do
  get "/all_products", controller: "products", actions: "all_products"
  get "/Pacer", controller: "products", actions: "Pacer"
  get "/Hot_Dog", controller: "products", actions: "Hot_Dog"
  get "/Pathos", controller: "products", actions: "Pathos"
  get "/Soda_Pop", controller: "products", actions: "Soda_Pop"
  get "/Bubble_Gum", controller: "products", actions: "Bubble_Gum"
end
