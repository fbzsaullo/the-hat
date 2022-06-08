class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    if @answer.save
      redirect_to questions_path
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :score)
  end
end
