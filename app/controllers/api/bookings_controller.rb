class Api::BookingsController < ApplicationController
  before_action :require_logged_in, only:[:create]

  def approve
    current_house_rental_request.approve!
  end

  def create
    @booking = Booking.new(booking_params)
    debugger
    @booking.user_id = current_user.id
    if !@booking.start_after_end?
        if @booking.save
          @booking.status = 'APPROVED'
          render :show
        end
    else
      @booking.status = 'REJECTED'
      render json: ["The checkout date must come after check in date"]
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
