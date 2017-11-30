# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

species = ["Chat","Chien","Tigre","Lion","Panda"]

pictures_chat = ["https://www.wanimo.com/veterinaire/images/articles/chat/chat-bouch.jpg","http://www.assuropoil.fr/wp-content/uploads/chat-heureux-entretien-article.jpg","https://bloximages.chicago2.vip.townnews.com/register-herald.com/content/tncms/assets/v3/editorial/d/35/d3515e04-aa55-588d-b5b4-8d9b6d0bf286/579d951c2c698.image.jpg","https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Felis_silvestris_silvestris_Luc_Viatour.jpg/220px-Felis_silvestris_silvestris_Luc_Viatour.jpg","https://www.wanimo.com/veterinaire/images/articles/chat/chat-malade.jpg","https://fr.cdn.v5.futura-sciences.com/buildsv6/images/wide1920/0/0/d/00dd1479a5_108485_chat-domestique.jpg"]
pictures_chien = ["https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i1pRA6Wb3ZpM/v3/-1x-1.jpg","https://media.mnn.com/assets/images/2016/12/rough-coated-collie.jpg.696x0_q80_crop-smart.jpg","http://www.assuropoil.fr/wp-content/uploads/assurer-son-chien-berger-allemand.jpg","https://previews.123rf.com/images/subbotina/subbotina1609/subbotina160900090/63374124-Akita-Inu-purebred-puppy-dog-isolated-on-white-background-Shiba-inu-Stock-Photo.jpg","https://www.croquetteland.com/media/Pages/categories/blocs-veterinaires/CONSEIL-VETERINAIRE-CHIENS.png","https://www.wanimo.com/veterinaire/images/articles/chien/chiot-prenom.jpg"]
pictures_tigre = ["https://www.quizz.biz/uploads/quizz/218827/7_JrZxP.jpg","https://www.sciencesetavenir.fr/assets/img/2017/07/27/cover-r4x3w1000-5979ffb47a3b0-tiger-2530158-960-720.jpg","http://aforismi.meglio.it/img/frasi/tigre.jpg","http://img1.wikia.nocookie.net/__cb20130414074332/reinoanimalia/es/images/3/38/Tigre_1.png","https://www.out-the-box.fr/wp-content/uploads/2016/05/jumping_tiger.jpg","https://www.out-the-box.fr/wp-content/uploads/2016/05/Faits-insolites-tigres.jpg"]
pictures_lion = ["http://www.takepart.com/sites/default/files/styles/large/public/cecil%20the%20lion.jpg","https://static.pexels.com/photos/615480/pexels-photo-615480.jpeg","http://media-channel.nationalgeographic.com/media/uploads/photos/content/video/2014/10/29/349582915975_349582915975_720p_5994_Racing_Speeds_DMS.jpg","https://www.universeofsymbolism.com/images/lion-2.jpg","https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Mammals/H-P/photoark-lion.ngsversion.1466004832449.adapt.945.1.png","http://unfetteredpotential.com/wp-content/uploads/2013/05/Lion.png"]
pictures_panda = ["https://nationalzoo.si.edu/sites/default/files/animals/giantpanda-001.jpg","https://images.fineartamerica.com/images-medium-large/1-giant-panda-mothaibaphoto-prints.jpg","https://us-east-1.tchyn.io/snopes-production/uploads/2016/08/panda.jpg","https://c1.staticflickr.com/6/5157/5851039010_e027c864ee_b.jpg","https://www.zoo-berlin.de/fileadmin/_processed_/4/4/csm_Meng_Meng_Baby_1_88cad0f74f.jpg","https://www.thelocal.de/userdata/images/article/fa6fd5014ccbd8f4392f716473ab6ff354f871505d9128820bbb0461cce1d645.jpg"]

pictures = { "Chat" => pictures_chat, "Chien" => pictures_chien, "Tigre" => pictures_tigre, "Lion" => pictures_lion,"Panda" =>  pictures_panda}
pictures_user = ["https://i.pinimg.com/736x/f5/a0/62/f5a0626a80fe6026c0ac65cdc2d8ede2--photography-portraits-photography-people.jpg","http://az617363.vo.msecnd.net/imgmodels/models/md10002851/f84801cf-08a9-4a1b-afda-cf1df26ef3f2_thumb.jpg","https://static.pexels.com/photos/220453/pexels-photo-220453.jpeg","https://epichairdesigns.com.au/wp-content/uploads/2016/08/summer-haircut-for-men-with-thick-hair-210x300.jpg","http://alfalfastudio.com/wp-content/uploads/2013/08/9c30bcfc-0fab-44f9-9e5d-623279e2427b_Alex-Sandrine.jpg","http://www.stefantell.se/blog/wp-content/uploads/2011/03/unedited.jpg"]

gender = ["M","F"]
character = ["Joyeux","Timide","Curieux","Lunatique","Ennuyant","Orgueilleux","Calme","Plaisant","Intelligent","Peureux","Vantard","Calculateur","Opportuniste"]
instruction = ["Nourrir matin midi et soir","Sortir le matin pour une petite promenade","Ne pas oublier sa sieste après le déjeuner","Chantez lui une chanson en cas d'insomnie la nuit","N'aime pas les céréales au petit dejeuner"]

address_paris = ["6 rue La Boétie, Paris","3 Place de la Madeleine, Paris","27 Square de la Couronne, Paris","120 rue Oberkampf, Paris","37 Rue des Volontaires, Paris","66 Rue des Cévennes, Paris","86 Rue de Miromesnil, Paris","75 Rue Caulaincourt, Paris","22 Avenue de Choisy, Paris","61 Rue de la Grange aux Belles, Paris","89 Rue Haxo, Paris","22 Rue Myrha, Paris","96 Rue de Rivoli, Paris","204 Bis Rue de la Croix Nivert, Paris","69 Avenue Victor Hugo, Paris","29 Avenue du Général Leclerc, Paris","20 Rue de l'Est, Paris","39 Rue des Lilas, Paris","107 Avenue du Général Michel Bizot, Paris"]

#generate users
User.create(
  email: "fletchdav@gmail.com",
  password: "airpet",
  picture: "https://avatars0.githubusercontent.com/u/31994489?s=400&v=4"
)
5.times do
  User.create(
    email: Faker::Internet.email,
    password: "airpet",
    picture: pictures_user.sample
  )
end

#generate pets
20.times do
  new_species = species.sample
  new_name = Faker::Name.first_name
  new_age = rand(2..15)
  new_food = Faker::Food.dish
  new_character = character.sample
  new_url = pictures[new_species].sample
  new_address = address_paris.sample
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
    instructions: instruction.sample,
    remote_photo_url: new_url,
    user_id: rand(1..User.all.length)
  )
  # new_pet.remote_photo_url = new_url
  new_pet.save
end

#generate bookings
pets = Pet.all
pets.each do |pet|
  if rand < 0.5
    user = User.all.sample
    start_date = Date.new(2017, 4, rand(20) + 1)
    end_date = start_date + rand(7) + 1
    total_price = pet.price * (end_date - start_date).to_i
    validated = rand < 0.5 ? false : true
    Booking.create(pet: pet, user: user, start_date: start_date, end_date: end_date, total_price: total_price, validated: validated)

    for i in (1..3) do
      user = User.all.sample
      start_date = Date.new(2018, i, rand(20) + 1)
      end_date = start_date + rand(7) + 1
      total_price = pet.price * (end_date - start_date).to_i
      validated = rand < 0.5 ? false : true
      Booking.create(pet: pet, user: user, start_date: start_date, end_date: end_date, total_price: total_price, validated: validated)
    end

    pet.availability = false
    pet.save
  end
end

