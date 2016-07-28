Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create]
  root "cocktails#index"
end
