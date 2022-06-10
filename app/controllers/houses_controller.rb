class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def frontend
    @house = House.find(1)
  end
end
