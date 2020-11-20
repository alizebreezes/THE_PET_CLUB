class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @bookings = Booking.all

  end

  def new
    @booking = Booking.new
    @pet = Pet.find(params[:pet_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @pet = Pet.find(params[:pet_id])
    @booking.user = current_user
    @booking.pet = @pet

    if @booking.save!
      redirect_to pet_booking_path(pet_id: @pet, id: @booking)
    else
      render "new"
    end
  end

  def edit
     @booking = Booking.find(params[:id])
     @pet = Pet.find(params[:pet_id])
  end

  def update
    @booking = Booking.find(params[:id])
    @pet = Pet.find(params[:pet_id])
    @booking.user = current_user
    @booking.pet = @pet
    @booking.update(booking_params)

    if @booking.save!
      redirect_to pet_booking_path(pet_id: @pet, id: @booking)
    else
      render "edit"
    end
  end

  def destroy

  @booking = Booking.find(params[:id])
  @booking.destroy

  redirect_to user_path(@booking.user)

  end

  private

    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :pet_id, :user_id)
    end
end
