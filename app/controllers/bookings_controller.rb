class BookingsController < ApplicationController

  before_action :authenticate_user!
  def index
    @cut = Cut.find(params[:cut_id])
    @booking = Booking.new
    @maximum_length = Booking.validators_on( :description ).first.options[:maximum]
  end

  def create
    @cut = Cut.find(params[:cut_id])
    @booking = Booking.new(book_params)
    @booking.user_id = current_user.id
    @booking.cut_id = @cut.id
    if @booking.save
      redirect_to root_path, notice: "Reservation pour le #{@booking.start_time.try(:strftime, '%d %B %Y')} bien prise en compte à bientôt !"
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:booking).permit(:start_time, :description, :user_id, :cut_id)
  end
end
