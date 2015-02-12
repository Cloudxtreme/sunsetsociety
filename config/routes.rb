Rails.application.routes.draw do
  resources :users
  root "pages#index"
  get "/auth/:provider/callback" => "authentications#create"
  get '/sign-in' => 'authentication#new', as: :signin
  get '/sign-out' => 'sessions#destroy', as: :signout

  # added from gCamp
  # get '/sign-up' => 'registrations#new', as: :signup
  # post '/sign-up' => 'registrations#create'

  # post '/sign-in' => 'authentication#create'


end
