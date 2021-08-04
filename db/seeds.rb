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
    Restaurant.create(title: "Not So Ritz Carlton", style: "American", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/d8GNyss.jpg", like: 54, unlike: 1)
    Restaurant.create(title: "Vegan Trash", style: "Vegan", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/stCqgdW.jpg", like: 2, unlike: 1)
    Restaurant.create(title: "Rack of Ribs", style: "BBQ", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/K8eC3Ai.jpg", like: 54, unlike: 6)
    Restaurant.create(title: "Oasis", style: "Mexican", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/W5uWH4k.jpg", like: 12, unlike: 44)
    Restaurant.create(title: "Yows Kitchen", style: "Japanese", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/Is2O6y0.jpg", like: 44, unlike: 98)
    Restaurant.create(title: "Shaqs shack", style: "American", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/nRqzmeD.jpg", like: 32, unlike: 3)
    Restaurant.create(title: "Table for 1", style: "Vegan", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/LftJ4Aw.jpg", like: 77, unlike: 5)
    Restaurant.create(title: "The View", style: "Mediterranean", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/myJ2i9m.jpg", like: 87, unlike: 2)
    Restaurant.create(title: "Thirsty Creamery", style: "Dairy", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/dcfQPe8.jpg", like: 33, unlike: 98)
    Restaurant.create(title: "Red", style: "British", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/gFeXSiM.jpg", like: 3, unlike: 3)
    Restaurant.create(title: "Tres Amigos", style: "Mexican", street: Faker::Address.street_address, city: Faker::Address.city, image_url: "https://i.imgur.com/tz3njeo.jpg", like: 123, unlike: 44)
puts "done seeding restaurant"

puts "seeding reviews"

#have 1 example one and add to webite later when backend persist on front
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
    Review.create(comment: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)


puts "done seeding reviews"

puts "✅ all data done!"
