Rails.application.routes.draw do
  resources :campaigns, only: [:create, :destroy, :index, :show, :edit, :update]
  resources :sessions, only: [:create] #gives access to sessions
  resources :registrations, only: [:create]
  resources :users

  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  
  delete :destroy, to: "campaigns#delete"
  get :index, to: "campaigns#index"
  get :edit, to: "campaigns#edit"
  get :create, to: "campaigns#create"
  get :show, to: "campaigns#show"
  patch :update, to: "campaigns#update"

  


  

  root to: "static#home"
  
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html