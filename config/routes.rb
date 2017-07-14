Rails.application.routes.draw do

  get 'home', to: "posts#index", as: "home"
  root to: "posts#index"



  devise_for :user,controllers: {
    registrations: 'user/registrations'
  }

  devise_scope :user do
    get 'login',to: 'devise/sessions#new'
    get 'logout',to: 'devise/sessions#destroy'
    get 'sign_up',to: 'devise/registrations#new'
  end


  scope '/user' do
    get '/:id', to:"user#show_profile", as: "user"
    get '/:id/posts', to:"user#show_user_posts", as:"show_user_posts"
    get '/:id/followers', to:"user#show_user_followers", as:"show_user_followers"
    put '/follow/:id',to: "user#follow_unfollow_user", as:"follow_unfollow_user"

  end

  scope '/posts' do
    post '',to: 'posts#create',as:"posts"
    get '/new',to:"posts#new",as: "new_post"
  end



end
