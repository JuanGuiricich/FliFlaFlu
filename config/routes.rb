Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :contacts, only: [:create, :new]
  get "contacts/sent"
  get "our_team", to: "pages#our_team"
  get "terms_of_use", to: "pages#terms_of_use"
  # Defines the root path route ("/")
  # root "articles#index"
end
