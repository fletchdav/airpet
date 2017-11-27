class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :title
      t.text :description
      t.string :name
      t.string :species
      t.string :gender
      t.integer :age
      t.text :favorite_food
      t.text :character
      t.text :address
      t.integer :price
      t.text :picture
      t.text :instructions

      t.timestamps
    end
  end
end
