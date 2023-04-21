Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pages, only: %i[index], as: :contact
  resources :cuts, only: :index do
    resources :bookings, only: %i[index create new]
  end
end
