class PostsController < ApplicationController
  before_action :set_post, only: [:show, :like_post]

  # GET /posts
  def index
    if params[:search_field]
      @users_search = User.where('name LIKE ?',"%#{params[:search_field]}")
    else
      @users_search = []
    end
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.user = @current_user
    respond_to do |format|
      if @post.save
        format.html { redirect_to user_posts_url(@current_user), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  def like_post
    @post.update(n_likes: @post.n_likes + 1)
    redirect_to user_posts_url(@post.user)
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:description)
    end
end
