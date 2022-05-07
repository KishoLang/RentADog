class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  #before_action :find_booking
  def show
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.dog = Dog.find(params[:dog_id])
    if @booking.save
      redirect_to dog_booking_path(@booking.dog, @booking.id)
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:dog_id)
  end

end
