class BookingsController < ApplicationController
  def index
    @booking = Booking.new
  end

  def create
    booking = Booking.new(book_params)
    if booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:booking).permit(:start_time, :end_time, :name, :address, :phone_number, :user_id)
  end
end
