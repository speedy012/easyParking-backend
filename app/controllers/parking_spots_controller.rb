class ParkingSpotsController < ApplicationController

  def index
      pins = ParkingSpot.all
      render json: pins
    end

  def create

    currentLocation = ParkingSpot.new(user_id: params[:user_id], latitude: params[:latitude], longitude: params[:longitude])

    if currentLocation.save
      render json: currentLocation
  end

  end




end
