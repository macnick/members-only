class PostsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create]

  def new
   @post = Post.new
  end

  def signed_in_user
    unless signed_in?
      redirect_to signin_url
    end
  end
end
