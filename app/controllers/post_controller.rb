class PostController < ApplicationController


  def new

  end

  def create

  end



  private

  def post_params
    params.require(:post).permit(:description,:user_id,:post_image)
  end
end
