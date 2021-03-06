class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pets = Pet.where.not(latitude: nil, longitude: nil)

    @markers = @pets.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        infoWindow: { content: render_to_string(partial: "/pets/map_box", locals: { pet: pet }) }
      }
    end
  end

  def show
    @marker =
      [{
        lat: @pet.latitude,
        lng: @pet.longitude,
        infoWindow: { content: render_to_string(partial: "/pets/map_box", locals: { pet: @pet }) }
      }]
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    # index = Algolia::Index.new("Pet")
    @pet = Pet.new(pet_params)
    authorize @pet
    @pet.user = current_user
    if @pet.save
      # @pet.index!
      # Pet.reindex
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path
  end

  def destroy
    @pet.destroy
    redirect_to users_dashboard_path
    # redirect_to users_dashboard_path(:anchor => "pets-tab")
  end


  private
  def set_pet
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def pet_params
    params.require(:pet).permit(:title, :description, :name, :species, :gender, :age, :favorite_food, :character, :address, :price, :picture, :instructions, :photo)
  end
end
