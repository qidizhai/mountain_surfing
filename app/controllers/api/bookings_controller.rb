class Api::BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    if current_user == nil
      render json: ["Please sign in/log in to book this house"], status: 401
    else
      @booking.user_id = current_user.id
      if (@booking.start_date?) && (@booking.end_date?) && (!@booking.start_before_today?) && (!@booking.start_after_end?) && (!@booking.hasbooked?)
          if @booking.save
            @booking.status = 'APPROVED'
            render :show
          end
      else
        @booking.status = 'REJECTED'
        if @booking.start_date? == false
          render json: ["Please choose a check in date"], status: 401
        elsif @booking.end_date? == false
          render json: ["Please choose a check out date"], status: 401
        elsif (@booking.start_after_end?)
            render json: ["The checkout date must come after check in date"], status: 401
        elsif @booking.start_before_today?
          render json: ["choose a date after current day"], status: 401
        elsif @booking.hasbooked?
          render json: ["This house has been booked during this time, please select another time"], status: 401
        end
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:house_id, :end_date, :start_date, :status)
  end
end
