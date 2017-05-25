Rails.application.routes.draw do
  get '/' => 'fidget_toys#index'
  get '/toys' => 'fidget_toys#index'

  get '/toys/new' => 'fidget_toys#new'
  post '/toys' => 'fidget_toys#create'

  get '/toys/:id' => 'fidget_toys#show'

  get 'toys/:id/edit' => 'fidget_toys#edit'
  patch '/toys/:id' => 'fidget_toys#update'

  delete '/toys/:id' => 'fidget_toys#destroy'

  get '/random' => "fidget_toys#random"

  get '/signup' => "users#new"

  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
end
