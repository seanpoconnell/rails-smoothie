Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'smoothies#home'
  get "users/:id/edit", to: "users#edit", as: :edit_profile
  resources :smoothies, only: [:home, :show, :new, :create] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end
