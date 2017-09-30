Rails.application.routes.draw do
  get '/team' => 'team#index'

  get '/service' => 'service#index'

  get '/mission' => 'mission#index'

  get 'login/new'

  root 'welcome#index'
  get '/#' => 'welcome#index'
  get '/ecommerce' => 'ecommerce#index'
  get '/dash' => 'dash#index'
  get '/blog' => 'blog#index'
  get '/login' => 'login#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
