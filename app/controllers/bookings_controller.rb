class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  # def index
  #   @bookings = Booking.all
  # end

  # def show
  # end

  # def new
  #   @booking = Booking.new
  #   authorize @booking
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pet = Pet.find(params[:pet_id])
    @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @booking.pet.price
    @booking.validated = false
    # raise
    authorize @booking
    if @booking.save
      redirect_to users_dashboard_path
    else
      render 'pets/show'
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.validated = true
    @booking.save
    @booking.pet.availability = false
    @booking.pet.save
      redirect_to users_dashboard_path
  end


  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to users_dashboard_path
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
