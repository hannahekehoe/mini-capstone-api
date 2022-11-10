Rails.application.routes.draw do
  get "/products/:id" => "products#show"

  get "/products" => "products#index"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  post "/users" => "users#create"

  # get "/fountain_pen", controller: "products", action: "fountain_pen"

  # get "/notebook", controller: "products", action: "notebook"

  # get "/stationery_set", controller: "products", action: "stationery_set"
end
