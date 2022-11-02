Rails.application.routes.draw do
  get "/fountain_pen", controller: "products", action: "fountain_pen"

  get "/notebook", controller: "products", action: "notebook"

  get "/stationery_set", controller: "products", action: "stationery_set"
end
