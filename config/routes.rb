Rails.application.routes.draw do
  get '/team' => 'team#index'

  get '/service' => 'service#index'

  get '/mission' => 'mission#index'

  get 'login/new' => 'login#new'

  get 'store/cart' => 'ecommerce#new'

  get 'store/checkout' => 'ecommerce#checkout'
  resource :charges
  get '/store/contacts' => 'ecommerce#contacts'
  root 'welcome#index'
  get '/#' => 'welcome#index'
  get '/ecommerce' => 'ecommerce#index'
  get '/dash' => 'dash#index'
  get '/blog' => 'blog#index'
  get 'dash/login' => 'login#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end