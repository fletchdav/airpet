class AddColumnsToBooking < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookings, :pet, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
    add_column :bookings, :total_price, :integer
    add_column :bookings, :validated, :boolean, default: false
  end
end
