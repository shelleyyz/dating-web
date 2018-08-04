class UsersController < ApplicationController
  # before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    # @user = User.languages.keys this is for enum
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end
end

private
def user_params
  params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :email, :interests)
end
