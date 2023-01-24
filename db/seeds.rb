# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin = Admin.create!(first_name: "John",last_name: "Doe", email: "johndoe@example.com", password: "password123")

f1 = Farmer.create!(first_name: "John", last_name: "Smith", email: "johnsmith@gmail.com", password: "password123")
f2 = Farmer.create!(first_name: "Jane", last_name: "Doe", email: "janedoe@gmail.com", password: "password123")
f3 = Farmer.create!(first_name: "Bob", last_name: "Johnson", email: "bobjohnson@gmail.com", password: "password123")
f4 = Farmer.create!(first_name: "Emily", last_name: "Williams", email: "emilywilliams@gmail.com", password: "password123")
f5 = Farmer.create!(first_name: "Michael", last_name: "Brown", email: "michaelbrown@gmail.com", password: "password123")

c1 = Consumer.create!(first_name: "John", last_name: "Doe", email: "johndoe1@example.com", password: "J0hnDoe#1")
c2 = Consumer.create!(first_name: "Jane", last_name: "Smith", email: "janesmith1@example.com", password: "J4n3Sm!th#1")
c3 = Consumer.create!(first_name: "Michael", last_name: "Johnson", email: "michaeljohnson1@example.com", password: "M!ch@elJ0hn#1")
c4 = Consumer.create!(first_name: "Emily", last_name: "Brown", email: "emilybrown1@example.com", password: "Em!lyBr0wn#1")
c5 = Consumer.create!(first_name: "Matthew", last_name: "Davis", email: "matthewdavis1@example.com", password: "M@tthewD@v!s#1")


d1=Donation.create!(user_id: f1.id, product: "maize", quantity: 50, date_donated: "2022-07-01", status: "completed")
d2=Donation.create!(user_id: f2.id, product: "beans", quantity: 40, date_donated: "2022-07-02", status: "completed")
d3=Donation.create!(user_id: f3.id, product: "cabbage", quantity: 30, date_donated: "2022-07-03", status: "completed")
d4=Donation.create!(user_id: f4.id, product: "tomatoes", quantity: 20, date_donated: "2022-07-04", status: "completed")
d5=Donation.create!(user_id: f5.id, product: "potatoes", quantity: 10, date_donated: "2022-07-05", status: "completed")
d6=Donation.create!(user_id: c5.id, product: "onions", quantity: 45, date_donated: "2022-07-06", status: "completed")
d7=Donation.create!(user_id: c4.id, product: "carrots", quantity: 35, date_donated: "2022-07-07", status: "completed")
d8=Donation.create!(user_id: c3.id, product: "peppers", quantity: 25, date_donated: "2022-07-08", status: "completed")
d9=Donation.create!(user_id: c2.id, product: "corn", quantity: 15, date_donated: "2022-07-09", status: "completed")
d10=Donation.create!(user_id: c1.id, product: "cucumbers", quantity: 5, date_donated: "2022-07-10", status: "completed")


Product.create!([
  { name: "Apple", price: 0.5, quantity: 4, image_url: "https://img.freepik.com/free-photo/apples-red-fresh-mellow-juicy-perfect-whole-white-desk_179666-271.jpg?size=626&ext=jpg", farmer_id: f1.id, consumer_id: c1.id},
  { name: "Banana", price: 0.7, quantity: 4, image_url: "https://img.freepik.com/free-photo/apples-red-fresh-mellow-juicy-perfect-whole-white-desk_179666-271.jpg?size=626&ext=jpg", farmer_id: f2.id, consumer_id: c1.id},
  { name: "Carrot", price: 0.3, quantity: 5, image_url: "https://img.freepik.com/free-photo/carrot-background_1339-3261.jpg?size=626&ext=jpg", farmer_id: f3.id, consumer_id: c2.id},
  { name: "Tomato", price: 0.4, quantity: 12, image_url: "https://img.freepik.com/free-photo/fresh-organic-red-tomatoes-black-plate-white-wooden-table-with-green-red-chili-peppers-green-peppers-black-peppercorns-salt-close-up-healthy-concept_114579-1204.jpg?size=626&ext=jpg", farmer_id: f4.id, consumer_id: c2.id},
  { name: "Potato", price: 0.6, quantity: 10, image_url: "https://img.freepik.com/free-photo/rustic-unpeeled-potatoes-desks_144627-3901.jpg?size=626&ext=jpg", farmer_id: f5.id, consumer_id: c3.id},
  { name: "Onion", price: 0.2, quantity: 15, image_url: "https://img.freepik.com/free-photo/side-view-basket-full-red-onions-wooden-background_141793-5655.jpg?size=626&ext=jpg", farmer_id: f1.id, consumer_id: c3.id},
  { name: "Pepper", price: 0.8, quantity: 8, image_url: "https://img.freepik.com/free-photo/front-view-peppers-chopping-board-surrounded-by-peppers-cherry-tomatoes-amber-background_140725-130387.jpg?auto=format&h=200", farmer_id: f2.id, consumer_id: c4.id},
  { name: "Corn", price: 0.9, quantity: 12, image_url: "https://img.freepik.com/premium-photo/corn-isolated-white-background_93675-36142.jpg?size=626&ext=jpg", farmer_id: f3.id, consumer_id: c4.id},
  { name: "Cucumber", price: 0.5, quantity: 4, image_url: "https://img.freepik.com/premium-photo/cucumber-isolated-white_29402-751.jpg?size=626&ext=jpg", farmer_id: f4.id, consumer_id: c5.id},
  { name: "Squash", price: 0.7, quantity: 3, image_url: "https://img.freepik.com/free-photo/front-view-fresh-sliced-pumpkins-dark-table-color-fruit-photo_140725-72972.jpg?size=626&ext=jpg", farmer_id: f5.id, consumer_id: c5.id}
])