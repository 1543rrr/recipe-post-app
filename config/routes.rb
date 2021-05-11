Rails.application.routes.draw do
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  get 'sessions/new'
  get 'users/new'
  get 'users/show'
  get 'users/index'
  root 'static_pages#home'
  get :about,        to: 'static_pages#about'
  get :use_of_terms, to: 'static_pages#terms'
  get :signup,       to: 'users#new'
  resources :users
  get    :login,     to: 'sessions#new'
  post   :login,     to: 'sessions#create'
  delete :logout,    to: 'sessions#destroy'
end