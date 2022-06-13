class HousesController < ApplicationController
  def index
    @houses = House.all
  end

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
end
