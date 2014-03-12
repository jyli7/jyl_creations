JylCreations::Application.routes.draw do
  resources :posts

  root :to => "home#index"
  post '/mail' => 'home#mail'
  devise_for :users, :controllers => {:registrations => "registrations"}

  get '/endless-input' => 'home#endless_input'

end
