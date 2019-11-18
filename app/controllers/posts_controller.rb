class PostsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create]

  def new
   @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:success] = "Successfully posted!"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  def signed_in_user
    unless signed_in?
      redirect_to signin_url
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :comment, :user_id)
  end
end
