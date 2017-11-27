# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

species = ["Chat","Chien","Tigre","Lion","Panda"]
pictures = { "Chat" => "https://fr.cdn.v5.futura-sciences.com/buildsv6/images/wide1920/0/0/d/00dd1479a5_108485_chat-domestique.jpg", "Chien" => "https://www.wanimo.com/veterinaire/images/articles/chien/chiot-prenom.jpg","Tigre" => "https://www.out-the-box.fr/wp-content/uploads/2016/05/Faits-insolites-tigres.jpg", "Lion" => "http://unfetteredpotential.com/wp-content/uploads/2013/05/Lion.png","Panda" => "https://www.thelocal.de/userdata/images/article/fa6fd5014ccbd8f4392f716473ab6ff354f871505d9128820bbb0461cce1d645.jpg" }
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

