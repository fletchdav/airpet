class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pets_path
  end

  def destroy
    @pet.destroy
    redirect_to users_dashboard_path
  end


  private
  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:title, :description, :name, :species, :gender, :age, :favorite_food, :character, :address, :price, :picture, :instructions)
  end
end
