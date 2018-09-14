class Api::HousesController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def index
    @houses = bounds ? House.in_bounds(bounds) : House.all
    render :index
  end

  def show
    @house = House.find(params[:id])
  end

  def create
    @house = House.create!(house_params)
    render :show
  end

  private

  def house_params
    params.require(:house).permit(:lat, :lng, :description, :pic_url)
  end

  def bounds
    params[:bounds]
  end
end
