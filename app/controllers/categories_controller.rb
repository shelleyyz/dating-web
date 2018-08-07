class CategoriesController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    @categories = Category.all

  end

  def form
    @categories = Category.all
    api_id = params[:api_id]
    redirect_to category_path(api_id)
  end


  def show
    categories_url = "https://opentdb.com/api.php?amount=10&category=#{params[:id]}&type=multiple"
    categories_info = HTTParty.get categories_url
    @categories = categories_info["results"]
    @category = Category.where(:api_id => params[:id])


  end


  def update
    @category = Category.where(:api_id => params[:id])
    score = params[:score]
    @category.update :score => score
    @current_user.categories << @category
  end

  def results
    @category = Category.where(:api_id => params[:id])
    score_info = @current_user.categories.where(:api_id => params[:id])
    @score = score_info.first.score
  end

end
