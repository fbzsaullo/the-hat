class PagesController < ApplicationController
  def home
  end

  def profile
    @date = current_user.created_at.to_s.split.first.gsub('-', '/')
  end
end
