class UsersController < ApplicationController
  def dashboard
    @pets = current_user.pets
    @bookings_r = current_user.bookings
    @bookings_o = []
    @pets.each do |pet|
      pet.bookings.each do |booking|
        @bookings_o << booking
      end
    end
    authorize current_user
  end
end
