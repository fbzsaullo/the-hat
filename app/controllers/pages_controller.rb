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
  end
end
