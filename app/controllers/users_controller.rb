class UsersController < ApplicationController
  # before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all.order(:first_name)

    if params[:gender]
    @users = @users.where("gender = ?", params[:gender])
  end

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

    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
    results = Geocoder.search("#{@user.location}")
    coordinates = results.first.coordinates
    @latitude = coordinates.first
    @longitude = coordinates.last
    @categories = Category.where(:user_id => params[:id]).order(score: :desc)

  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

    if params["user"]["location"]
      results = Geocoder.search("#{@user.location}")
      coordinates = results.first.coordinates
      @latitude = coordinates.first
      @longitude = coordinates.last

    end

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
    if @current_user.admin?
      redirect_to users_path
    else
      redirect_to new_user_path
    end
  end


  def profile
    @user = @current_user
    render :show
  end

  def matches
    @users = @current_user.matches
    render :matches
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :interests, :email, :password, :password_confirmation, :image, :gender, :dob, :location, :language, :bio, :admin)
  end


end
