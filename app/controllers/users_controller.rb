class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC")
  end

  def edit
  end

  def update
  end

  def destroy
    # user = User.find(params[:id])
    # user.destroy
    # redirect_to new_post_path
  end
end
