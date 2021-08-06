Review.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "🌱 Seeding users"
# Seed your database here

10.times do 
    User.create(name: Faker::Name.name, age: rand(18..70))
end

puts "done seeding users"

puts "seeding restaurant"
#custom 10 restaurants no faker for title/style
    Restaurant.create(title: "Not So Ritz Carlton", style: "American", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/d8GNyss.jpg", like:54, unlike:1)
    Restaurant.create(title: "Vegan Trash", style: "Vegan", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/stCqgdW.jpg", like:2, unlike:1)
    Restaurant.create(title: "Rack of Ribs", style: "BBQ", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/K8eC3Ai.jpg", like:54, unlike:6)
    Restaurant.create(title: "Oasis", style: "Mexican", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/W5uWH4k.jpg", like:12, unlike:44)
    Restaurant.create(title: "Yows Kitchen", style: "Japanese", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/Is2O6y0.jpg", like:44, unlike:98)
    Restaurant.create(title: "Shaqs shack", style: "American", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/nRqzmeD.jpg", like:32, unlike:3)
    Restaurant.create(title: "Table for 1", style: "Vegan", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/LftJ4Aw.jpg", like:77, unlike:5)
    Restaurant.create(title: "The View", style: "Mediterranean", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/myJ2i9m.jpg", like:87, unlike:2)
    Restaurant.create(title: "Thirsty Creamery", style: "Dairy", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/dcfQPe8.jpg", like:33, unlike:98)
    Restaurant.create(title: "Red", style: "British", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/gFeXSiM.jpg", like:3, unlike:3)
    Restaurant.create(title: "City Hall Cafe`", style: "Mediterranean", street: Faker::Address.street_address, city: Faker::Address.city, image_url:"https://i.imgur.com/iM2pN7J.jpg", like:22, unlike:4)
    Restaurant.create(title: "Tres Amigos", style: "Mexican", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/tz3njeo.jpg", like:123, unlike:44)
    Restaurant.create(title: "Rainforest Skyline", style: "Mediterranean", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/ndqYmld.jpeg", like:65, unlike:54)
    Restaurant.create(title: "Ivans Shack", style: "Cajun", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/boU7qUL.jpg", like:13, unlike:94)
    Restaurant.create(title: "Rajijs' Deli", style: "Deli", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/GpDmLuI.jpg", like:23, unlike:56)
    Restaurant.create(title: "Jacobs View", style: "Greek", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/vlproO0.jpg", like:534, unlike:2)
    Restaurant.create(title: "Broken Yoke Cafe'", style: "Mexican/American", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/DZkEZW5.jpg", like:63, unlike:1)
    Restaurant.create(title: "Waterfall Room", style: "British", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/d9lueRJ.jpg", like:93, unlike:65)
    Restaurant.create(title: "Regio Cafe'", style: "Mexican", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/U6Wi1YF.jpg", like:323, unlike:43)
    Restaurant.create(title: "Bad Daddy's", style: "Amreican", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/w5H1Hea.jpg", like:54, unlike:41)
    Restaurant.create(title: "PastaMan", style: "Italian", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/9sz2mL2.jpg", like:945, unlike:12)
    Restaurant.create(title: "Tazikis", style: "Mediterranean", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/2wTAQeU.jpg", like:234, unlike:3)
    Restaurant.create(title: "Gary's Diary", style: "Dairy", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/8gBe4dv.jpg", like:565, unlike:45)
    Restaurant.create(title: "Soon Fatt", style: "Chinese", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/0ZDNRna.jpg", like:1, unlike:21)

puts "done seeding restaurant"
puts "seeding reviews"

#have 1 example one and add to webite later when backend persist on front
70.times do
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
end

puts "done seeding reviews"
puts "✅ all data done!"
