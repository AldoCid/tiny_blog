class UserController < ApplicationController
  before_action :set_user

  def show_profile
  end

  def show_user_followers
    @user_followers = @user.followers
  end

  def show_user_posts
    @user_posts = @user.posts.order(created_at: :desc)
  end

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
