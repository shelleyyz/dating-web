class QuestionsController < ApplicationController
  def index
    @questions = Question.all

  end

  def form
    @questions = Question.all
    category_id = params[:category_id]
    redirect_to question_path(category_id)
  end

  def show
    questions_url = "https://opentdb.com/api.php?amount=10&category=#{params[:id]}&difficulty=medium&type=multiple"
    questions_info = HTTParty.get questions_url
    @questions = questions_info["results"]
  end
end
