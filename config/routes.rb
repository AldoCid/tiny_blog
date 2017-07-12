Rails.application.routes.draw do

  get 'home/index'
  root to: "home#index"


  devise_for :user,controllers: {
    registrations: 'user/registrations'
  }

  devise_scope :user do
    get 'login',to: 'devise/sessions#new'
    get 'logout',to: 'devise/sessions#destroy'
    get 'sign_up',to: 'devise/registrations#new'
  end


  get '/user/profile', to:"profile#show", as: "user_profile"


end
