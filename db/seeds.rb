# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user = User.create(email: "admin@gmail.com", password: "test123", password_confirmation: "test123", role: "admin")
user = User.create(email: "student@gmail.com", password: "test123", password_confirmation: "test123", role: "student")
user = User.create(email: "instructor@gmail.com", password: "test123", password_confirmation: "test123", role: "instructor")




10.time do
  
  Course.create(title: Faker::Lorem.characters(number: 5), description: Faker::Lorem.characters(number: 15))
end