class UserController < ApplicationController
  before_action :set_user, except:[:index]
  
  #GET user
  def index
    if params[:search_field]
      @users = User.where('name LIKE ?',"%#{params[:search_field]}")
    else
      @users = []
    end
  end

  #GET user/:id
  def show
  end

  #GET user/:id/followers
  def followers
    @user_followers = @user.followers
  end

  #GET user/:id/posts
  def posts
    @user_posts = @user.posts.order(created_at: :desc)
  end

  #GET user/follow:id
  def follow_unfollow_user
    if !@current_user.follows?(@user)
      @current_user.followers << @user
    else
      @current_user.followers.delete(@user)
    end
    redirect_to user_url(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
