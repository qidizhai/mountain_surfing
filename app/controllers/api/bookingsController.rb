class Api::BookingsController < ApplicationController

  def approve
    current_house_rental_request.approve!
    render :show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id

    if @booking.save
      render :show
    else
      render json: @booking, status: :unprocessable_entity
    end
  end

  def deny
    current_house_rental_request.deny!
    render :show
  end

  private

  def current_house_rental_request
    @booking ||=
      Booking.includes(:house).find(params[:id])
  end

  def current_house
    current_house_rental_request.house
  end

  def booking_params
    params.require(:booking).permit(:house_id, :end_date, :start_date, :status)
  end
end
