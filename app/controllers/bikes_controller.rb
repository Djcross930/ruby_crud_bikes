class BikesController < ApplicationController
  def index
    bikes = Bike.all
    render json: bikes.as_json
  end

  def show
    bike = Bike.find_by(id: params[:id])
    render json: bike.as_json
  end
end
