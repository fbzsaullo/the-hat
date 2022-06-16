class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # case current_user.house_id
    # when 1
    #   redirect_to houses_frontend_path
    # when 2
    #   redirect_to houses_backend_path
    # when 3
    #   redirect_to houses_gamedev_path
    # when 4
    #   redirect_to houses_datascience_path
    # else
    #   render "home"
    # end
  end

  def profile
    @date = current_user.created_at.to_s.split.first.gsub('-', '/')
    case current_user.house_id
       when 1
         @house = houses_frontend_path
       when 2
         @house = houses_backend_path
       when 3
         @house = houses_gamedev_path
       when 4
         @house = houses_datascience_path
       else
        render "home"
       end
  end

  def house_sort
    first_result = current_user.answers.joins(:question).group("questions.house_id").sum("answers.score").sort_by(&:last).reverse.first
    @result = (first_result.last * 100) / 20
  end
end
