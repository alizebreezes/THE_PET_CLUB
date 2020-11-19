class PetsController < ApplicationController
  def index
    @pets = Pet.all

     # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @pets.geocoded.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { pet: pet }),
      }
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
  @pet = Pet.new(pet_params)
  @pet.user = current_user

    if @pet.save
    redirect_to pets_path
  else
    render :new
  end

  end

  private

   def pet_params
    params.require(:pet).permit(:name, :species, :age, :description, :location, :photo)
  end
end
