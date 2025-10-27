class AnswersController < ApplicationController
  before_action :set_question
  before_action :set_answer, only: [ :show ]
  before_action :build_answer, only: [ :new, :create ]

  def show; end
  def new; end

  def create
    @answer.assign_attributes(answer_params)

    if @answer.save
      redirect_to [ @question, @answer ]
    else
      render :new
    end
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end

  def set_answer
    @answer = @question.answers.find(params[:id])
  end

  def build_answer
    @answer = @question.answers.new
  end

  def answer_params
    params.expect answer: [ :body ]
  end
end
