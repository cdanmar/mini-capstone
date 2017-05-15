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

end
