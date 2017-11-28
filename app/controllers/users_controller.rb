class UsersController < ApplicationController
  def dashboard
    @pets = current_user.pets
    # @bookings = current_user.bookings
  end
end
