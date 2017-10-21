Rails.application.routes.draw do

  get 'home', to: "posts#index", as: "home"
  root to: "user#index"



  devise_for :user,controllers: {
    registrations: 'user/registrations'
  }

  devise_scope :user do
    get 'login',to: 'devise/sessions#new'
    get 'logout',to: 'devise/sessions#destroy'
    get 'sign_up',to: 'devise/registrations#new'
  end


  scope '/user' do
    get '', to: "user#index", as: "users"
    get '/:id', to:"user#show", as: "user"
    get '/:id/posts', to:"user#posts", as:"user_posts"
    get '/:id/followers', to:"user#followers", as:"user_followers"
    put '/follow/:id',to: "user#follow_unfollow_user", as:"follow_unfollow_user"

  end

  scope '/posts' do
    post '',to: 'posts#create',as:"posts"
    get '/new',to:"posts#new",as: "new_post"
    put ':id/like_post',to:"posts#like_post",as:"like_post"
  end



end
