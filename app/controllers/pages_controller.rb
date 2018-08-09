class PagesController < ApplicationController

  def home
      redirect_to users_path if @current_user.present?
  end

  def show
    render :quiz
  end
end
