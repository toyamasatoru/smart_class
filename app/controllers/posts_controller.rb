class PostsController < ApplicationController
  def index
    # @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
    @posts = Post.includes(:user).order('created_at DESC')
  end

  def create
    # @post = Post.create(post_params)
    @post = Post.new(post_params)
    if @post.save
      redirect_to new_post_path
    else
      render :index
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to new_post_path
  end

  def edit
    @post = Post.find(params[:id])
    redirect_to new_post_path unless @post.user_id == current_user.id
  end

  def update
    @post = Post.find(params[:id])
    # post.update(post_params)
    if @post.update(post_params)
      redirect_to new_post_path
    else
      render :edit
    end
  end

  # def quiz
  # end

  private

  def post_params
    params.require(:post).permit(:text).merge(user_id: current_user.id)
  end
end
