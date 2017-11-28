class UsersController < ApplicationController
  def dashboard
    @pets = current_user.pets
    # @bookings = current_user.bookings
    authorize current_user
  end
end
