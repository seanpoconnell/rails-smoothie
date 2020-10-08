Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'smoothies#home'
  resources :smoothies, only: [:home, :show, :new, :create]
end
