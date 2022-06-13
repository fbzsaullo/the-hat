class HousesController < ApplicationController
  before_action :house_sort

  def frontend
    @house = House.find(1)
  end

  def backend
    @house = House.find(2)
  end

  def gamedev
    @house = House.find(3)
  end

  def datascience
    @house = House.find(4)
  end

  def house_sort
    first_result = current_user.answers.joins(:question).group("questions.house_id").sum("answers.score").sort_by(&:last).reverse.first
    @result = (first_result.last * 100) / 20
  end
end
