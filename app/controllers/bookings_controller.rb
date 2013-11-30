class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      BookingMailer.send_booking_to_staff(@booking)
      redirect_to '/booking/success'
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
    def booking_params
      params.require(:booking).permit(:room_id, :customer_name, :customer_phonenumber, :booking_date)
    end
end
