class Api::BookingsController < ApplicationController
  before_action :require_logged_in, only:[:create]

  def approve
    current_house_rental_request.approve!
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    if self.approve
       if @booking.save
          render :show
       end
    else
      @booking.status = 'REJECTED'
      render :show
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
