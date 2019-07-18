class ParkingSpotsController < ApplicationController

  def index
      pins = ParkingSpot.all
      render json: pins
    end

  def create
    byebug
  end




end
