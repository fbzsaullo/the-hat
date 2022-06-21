class QuestionsController < ApplicationController

  # def result
  #   result = current_user.answers.joins(:question).group("questions.house_id").sum("answers.score").sort_by(&:last).reverse.first
  #   house = House.find(result.first)
  # end

  def show
    @answered_questions = current_user.answers.pluck(:question_id)
    @question = Question.where.not(id: @answered_questions).sample
    @question_number = @answered_questions.count + 1
    @answer = Answer.new

    if @question.nil?
      result = current_user.answers.joins(:question).group("questions.house_id").sum("answers.score").sort_by(&:last).reverse.first
      house = House.find(result.first)
      current_user.house_id = house.id
      current_user.save

      redirect_to profile_path

    end
  end

  private

  def question_params
    params.require(:question).permit(:question)
  end
end
