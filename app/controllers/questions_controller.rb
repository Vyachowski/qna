class QuestionsController < ApplicationController
  def new
    question
  end

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

  def question_params
    params.expect :title, :body
  end

  helper_method :question
end
