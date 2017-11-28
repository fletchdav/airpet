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
pictures_user = ["https://i.pinimg.com/736x/f5/a0/62/f5a0626a80fe6026c0ac65cdc2d8ede2--photography-portraits-photography-people.jpg","http://az617363.vo.msecnd.net/imgmodels/models/md10002851/f84801cf-08a9-4a1b-afda-cf1df26ef3f2_thumb.jpg","https://static.pexels.com/photos/220453/pexels-photo-220453.jpeg","https://epichairdesigns.com.au/wp-content/uploads/2016/08/summer-haircut-for-men-with-thick-hair-210x300.jpg","http://alfalfastudio.com/wp-content/uploads/2013/08/9c30bcfc-0fab-44f9-9e5d-623279e2427b_Alex-Sandrine.jpg","http://www.stefantell.se/blog/wp-content/uploads/2011/03/unedited.jpg"]
gender = ["M","F"]
character = ["Joyeux","Timide","Curieux","Lunatique","Ennuyant","Orgueilleux","Calme","Plaisant","Intelligent","Peureux","Vantard","Calculateur","Opportuniste"]
instruction = ["Nourrir matin midi et soir","Sortir le matin pour une petite promenade","Ne pas oublier sa sieste après le déjeuner","Chantez lui une chanson en cas d'insomnie la nuit","N'aime pas les céréales au petit dejeuner"]


#generate users
10.times do
  User.create(
    email: Faker::Internet.email,
    password: "airpet",
    picture: pictures_user.sample
  )
end

#generate pets
40.times do
  new_species = species.sample
  new_name = Faker::Name.first_name
  new_age = rand(2..15)
  new_food = Faker::Food.dish
  new_character = character.sample
  new_address = "#{Faker::Address.street_address}, #{Faker::Address.city}"
  new_title = "#{new_species} #{new_character} de #{new_age.to_s} ans"
  new_description = "#{new_name} est un #{new_species} #{new_character} de #{new_age.to_s} ans. Il habite au #{new_address} et son plat préféré est le #{new_food}"
  new_pet = Pet.new(
    title: new_title,
    description: new_description,
    name: new_name,
    species: new_species,
    gender: gender.sample,
    age: new_age,
    favorite_food: new_food,
    character: new_character,
    address: new_address,
    price: rand(10..100),
    picture: pictures[new_species],
    instructions: instruction.sample,
    user_id: rand(User.all.length),
  )
  new_pet.save
end

