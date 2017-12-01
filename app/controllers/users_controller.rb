class UsersController < ApplicationController
  def dashboard
    @pets = current_user.pets
    @bookings_r = current_user.bookings
    @bookings_o = []
    @bookings_o_pending = []
    @pets.each do |pet|
      pet.bookings.each do |booking|
        @bookings_o << booking
        @bookings_o_pending << booking unless booking.validated
      end
      @bookings_o = @bookings_o.sort_by {|k| k["end_date"]}.reverse
      @bookings_o_pending_count = @bookings_o_pending.count
      @bookings_o_tovalidate = @bookings_o.select {|booking| booking.validated == false }
      @bookings_o_other = @bookings_o.select {|booking| booking.validated }
    end
    authorize current_user

  end

end
