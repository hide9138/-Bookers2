class UsersController < ApplicationController

  def index
    @users = User.all
    @book = Book.new
    @user =  current_user
  end

    def home
    @users = User.all
    @book = Book.new
    @books = Book.all
    @user = current_user
    end

  def show
    @user = User.find(params[:id])
    @books = Book.all
    @book = Book.new
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end

