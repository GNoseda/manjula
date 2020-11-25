Rails.application.routes.draw do
  root "babies#index"
  resources :feeds
  resources :babies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
