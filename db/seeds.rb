# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin = Admin.create!(first_name: "John",last_name: "Doe", email: "johndoe@example.com", password: "password123")

f1 = Farmer.create!(first_name: "John", last_name: "Smith", email: "johnsmith@gmail.com", password: "password123", location: "New York")
f2 = Farmer.create!(first_name: "Jane", last_name: "Doe", email: "janedoe@gmail.com", password: "password123", location: "California")
f3 = Farmer.create!(first_name: "Bob", last_name: "Johnson", email: "bobjohnson@gmail.com", password: "password123", location: "Texas")
f4 = Farmer.create!(first_name: "Emily", last_name: "Williams", email: "emilywilliams@gmail.com", password: "password123", location: "Florida")
f5 = Farmer.create!(first_name: "Michael", last_name: "Brown", email: "michaelbrown@gmail.com", password: "password123", location: "Georgia")
f6 = Farmer.create!(first_name: "Sarah", last_name: "Miller", email: "sarahmiller@gmail.com", password: "password123", location: "Illinois")
f7 = Farmer.create!(first_name: "David", last_name: "Moore", email: "davidmoore@gmail.com", password: "password123", location: "Michigan")
f8 = Farmer.create!(first_name: "Jessica", last_name: "Taylor", email: "jessicataylor@gmail.com", password: "password123", location: "North Carolina")
f9 = Farmer.create!(first_name: "Richard", last_name: "Anderson", email: "richardanderson@gmail.com", password: "password123", location: "Ohio")
f10 = Farmer.create!(first_name: "Ashley", last_name: "Thomas", email: "ashleythomas@gmail.com", password: "password123", location: "Pennsylvania")

c1 = Consumer.create!(first_name: "John", last_name: "Doe", email: "johndoe1@example.com", password: "J0hnDoe#1")
c2 = Consumer.create!(first_name: "Jane", last_name: "Smith", email: "janesmith1@example.com", password: "J4n3Sm!th#1")
c3 = Consumer.create!(first_name: "Michael", last_name: "Johnson", email: "michaeljohnson1@example.com", password: "M!ch@elJ0hn#1")
c4 = Consumer.create!(first_name: "Emily", last_name: "Brown", email: "emilybrown1@example.com", password: "Em!lyBr0wn#1")
c5 = Consumer.create!(first_name: "Matthew", last_name: "Davis", email: "matthewdavis1@example.com", password: "M@tthewD@v!s#1")
c6 = Consumer.create!(first_name: "Olivia", last_name: "Garcia", email: "oliviagarcia1@example.com", password: "Ol!v!aG@rc!a#1")
c7 = Consumer.create!(first_name: "Andrew", last_name: "Rodriguez", email: "andrewrodriguez1@example.com", password: "Andr3wR0dr!guez#1")
c8 = Consumer.create!(first_name: "Elizabeth", last_name: "Martinez", email: "elizabethmartinez1@example.com", password: "El!z@bethM@rt!nez#1")
c9 = Consumer.create!(first_name: "Joshua", last_name: "Robinson", email: "joshuarobinson1@example.com", password: "J0shuaR0b!ns0n#1")
c10 = Consumer.create!(first_name: "Samantha", last_name: "Young", email: "samanthayoung1@example.com", password: "Sm@nth@Y0ung#1")
