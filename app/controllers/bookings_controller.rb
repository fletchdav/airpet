class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @Booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @Booking.destroy
    redirect_to users_dashboard_path
  end


  private
  def set_booking
    @booking = booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:pet, :user, :start_date, :end_date, :total_price, :validated)
  end
end
