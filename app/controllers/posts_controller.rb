class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def create
    @post = Post.create(post_params)
    # @post = Post.new(post_params)
    # if @post.save
    #   redirect_to new_post_path
    # else
    #   render :index
    # end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
    unless @post.user_id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    @post = Post.find(params[:id])
    # post.update(post_params)
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:text).merge(user_id: current_user.id)
  end
end
