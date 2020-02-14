Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # A user can see the list of cocktails
  # A user can create a new cocktail
  resources :cocktails, only: [:create, :index, :show, :new] do
  # A user can see the details of a given cocktail, with the dose needed for each ingredient
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  root to: "cocktails#index"
end
