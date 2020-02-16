class UsersController < ApplicationController
  before_action :authenticate_user!


  def index
    @users = User.all
    @book = Book.new
    @user =  current_user
  end

    def home
    @book = Book.new
    @books = Book.all
    @users = current_user
    @user = User.find(params[:id])
  end

  def show
    @book = Book.new
    @books = Book.all
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
    if @user.id == current_user.id
    else
    redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end

