class BikesController < ApplicationController
  def index
    bikes = Bike.all
    render json: bikes.as_json
  end
end
