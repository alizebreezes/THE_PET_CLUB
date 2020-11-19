class PetsController < ApplicationController
  def index
    # raise
    @pets = Pet.all
    if params[:species].present?
      @pets = @pets.where(species: params[:species])
    end
    if params[:age].present?
      @pets = @pets.where(age: params[:age])
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
    params.require(:pet).permit(:name, :species, :age, :description, :photo)
  end
end
