class AddAvailabilityToPets < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :availability, :boolean, default: true
  end
end
