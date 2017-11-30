class UsersController < ApplicationController
  def dashboard
    @pets = current_user.pets
    @bookings_r = current_user.bookings
    @bookings_o = []
    @pets.each do |pet|
      pet.bookings.each do |booking|
        @bookings_o << booking
      end
      @bookings_o = @bookings_o.sort_by {|k| k["end_date"]}.reverse
    end
    authorize current_user
  end
end
