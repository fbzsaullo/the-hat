class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
    @date = current_user.created_at.to_s.split.first.gsub('-', '/')
  end
end
