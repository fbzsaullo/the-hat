class QuestionsController < ApplicationController

  def show
    @answered_questions = current_user.answers.pluck(:question_id)
    @question = Question.where.not(id: @answered_questions).sample
    @answer = Answer.new
    if @question.nil?
      redirect_to root_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:question)
  end
end
