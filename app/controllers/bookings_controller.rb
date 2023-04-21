class BookingsController < ApplicationController

  before_action :authenticate_user!
  def index
    @cut = Cut.find(params[:cut_id])
    @booking = Booking.new
  end

  def create
    @cut = Cut.find(params[:cut_id])
    @booking = Booking.new(book_params)
    @booking.user_id = current_user.id
    @booking.cut_id = @cut.id
    if @booking.save
      redirect_to root_path, notice: "Reservation prise en compte"
    else
      redirect_to cut_bookings_path(@cut.id), notice: "Erreur dans le formulaire"
    end
  end

  private

  def book_params
    params.require(:booking).permit(:start_time, :end_time, :user_id, :cut_id)
  end
end
