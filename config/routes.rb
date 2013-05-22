JylCreations::Application.routes.draw do
  root :to => "home#index"
  get '/work' => "home#index"
  get '/about' => "home#index"
  get '/writing' => "home#index"
  get '/inquiry' => "home#index"
  devise_for :users
end
