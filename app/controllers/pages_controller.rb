class PagesController < ApplicationController

  def home

  end

  def show
  questions_url = "https://opentdb.com/api.php?amount=10&category=18&difficulty=medium&type=multiple"

  questions_info = HTTParty.get questions_url

  @questions = questions_info["results"]


      render :code_test
  end

end
