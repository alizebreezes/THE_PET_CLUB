class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @pets = @user.pets
    @bookings = @user.bookings
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
  params.require(:user).permit(:name, :locaction, :bio)

  end




end
