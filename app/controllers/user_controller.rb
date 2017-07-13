class UserController < ApplicationController
  before_action :set_user

  def show_profile
  end

  def show_user_followers
    # @user_followers = @current_user.followers
  end

  def show_user_posts
    @user_posts = @user.posts
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
