Rails.application.routes.draw do
  resources :users
  root "pages#index"
  get "/auth/:provider/callback" => "users#instragram"
end
