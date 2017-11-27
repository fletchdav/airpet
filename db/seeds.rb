# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

species = ["Chat","Chien","Tigre","Lion","Panda"]
pictures = { "Chat" => "https://unsplash.com/photos/KHBvwAnWFmc", "Chien" => "https://unsplash.com/photos/mx0DEnfYxic","Tigre" => "https://unsplash.com/photos/IDO_a-dxrCY", "Lion" => "https://unsplash.com/photos/DOrhbkYbFkg","Panda" => "https://unsplash.com/photos/fu3UTG0rUfk" }
gender = ["M","F"]
character = ["Joyeux","Timide","Curieux","Lunatique","Ennuyant","Orgueilleux","Calme","Plaisant","Intelligent","Peureux","Vantard","Calculateur","Opportuniste"]


#generate users
10.times do
  User.create(
    email: Faker::Internet.email,
    password: "airpet"
  )
end

#generate pets
30.times do
  new_species = species.sample
  new_pet = Pet.new(
    title: "XXX",
    description: "XXX",
    name: Faker::Name.first_name,
    species: new_species,
    gender: gender.sample,
    age: rand(1..15),
    favorite_food: Faker::Food.dish,
    character: character.sample,
    address: Faker::Address.street_address,
    price: rand(10..100),
    picture: pictures[new_species],
    instructions: "XXX",
    user_id: rand(User.all.length),
  )
  new_pet.save
end

