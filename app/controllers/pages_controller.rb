class PagesController < ApplicationController

  def home
    if @user = @current_user.present?
      redirect_to user_path(@current_user)
    else
      render :home

    end
  end

end
