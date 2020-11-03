class PostsController < ApplicationController
before_action :set_post, only: [:show, :destroy]
before_action :authenticate_user!, except: [:index, :show]


  def index
    @posts = Post.search(params[:search])
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

private

  def post_params
    params.require(:post).permit(:title, :content, :search)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
