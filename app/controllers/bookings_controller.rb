class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def show
    @booking = Booking.find(params[:id])
  end
end
