Rails.application.routes.draw do
  get 'home/index'

  devise_for :user

  devise_scope :user do
    get 'login',to: 'devise/sessions#new'
    get 'logout',to: 'devise/sessions#destroy'
    get 'sign_up',to: 'devise/registrations#new'
  end

  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
