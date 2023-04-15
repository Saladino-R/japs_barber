class BookingsController < ApplicationController
  def index
  end

  def create
    booking = Booking.new(book_params)
    booking.save
  end

  private

  def book_params
    params.require(:booking).permit(:start_time, :end_time, :name, :address, :phone_number)
  end
end
