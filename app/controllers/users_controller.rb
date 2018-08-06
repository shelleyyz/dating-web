class UsersController < ApplicationController
  # before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all.order(:first_name)
  end

  def new
    @user = User.new
    # @user = User.languages.keys this is for enum
  end

  def create
    @user = User.new user_params
    if params["user"]["image"]
      cloudinary =
      Cloudinary::Uploader.upload( params["user"]["image"] )
      @user.image = cloudinary["url"]
    end
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
            #TODO change above redirect so user is redirected to their 'dashboard' once they create their account
    else
      render :new
    end
  end

  # def age(dob)
  #   dob = @user.dob
  #   now = Time.now.utc.to_date
  #   now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  # end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update user_params

    if params["user"]["image"]
    cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
    @user.image = cloudinary["url"]
  end
    @user.save

    redirect_to @user
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end


  def profile
    @user = @current_user
    render :show
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :interests, :email, :password, :password_confirmation, :image, :gender, :dob, :location, :language, :bio, :admin)
  end


end
