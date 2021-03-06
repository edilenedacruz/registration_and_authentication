class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "Your account has been created."
      redirect_to user_path(@user)
    else
      flash[:message] = "Then information you entered is not complete or an user already exists with the information provided. Please reenter."
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
