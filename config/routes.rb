Rails.application.routes.draw do
  resources :users
  root "pages#index"
  get "/auth/:provider/callback" => "authentications#create"
end
