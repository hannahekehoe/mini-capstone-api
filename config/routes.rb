Rails.application.routes.draw do
  ### PRODUCT ROUTES
  get "/products/:id" => "products#show"

  get "/products" => "products#index"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  ### USER ROUTES
  post "/users" => "users#create"

  ### SESSION ROUTES
  post "/sessions" => "sessions#create"

  ### ORDER ROUTES
  post "/orders" => "orders#create"

  get "/orders/:id" => "orders#show"

  get "/orders" => "orders#index"

  # get "/fountain_pen", controller: "products", action: "fountain_pen"

  # get "/notebook", controller: "products", action: "notebook"

  # get "/stationery_set", controller: "products", action: "stationery_set"
end
