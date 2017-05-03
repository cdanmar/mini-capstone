Rails.application.routes.draw do
  get '/toy' => 'toys#one_toy'
end
