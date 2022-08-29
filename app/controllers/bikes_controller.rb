class BikesController < ApplicationController
  def index
    bikes = Bike.all
    render json: bikes.as_json
  end

  def show
    bike = Bike.find_by(id: params[:id])
    render json: bike.as_json
  end

  def create
    bike = Bike.new
    bike.brand = params[:brand]
    bike.price = params[:price]
    bike.save
    render json: bike.as_json
  end
end
