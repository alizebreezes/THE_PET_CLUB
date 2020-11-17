class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @pet = Pet.find(params[:pet_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @pet = Pet.find(params[:pet_id])
    @booking.pet = @pet

    if @booking.save
      redirect_to pet_path(@booking)
    else
      @booking.save
      render pet_booking_path
    end
  end

  private

    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :pet_id, :user_id)
    end
end
