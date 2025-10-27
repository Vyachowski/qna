class QuestionsController < ApplicationController
  before_action :question

  def show; end
  def new; end

  def create
    question.assign_attributes(question_params)

    if question.save
      redirect_to question
    else
      render :new
    end
  end

  private

  def question
    @question ||= params[:id] ? Question.find(params[:id]) : Question.new
  end
  helper_method :question

  def question_params
    params.expect question: [ :title, :body ]
  end
end
