# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creation user"

User.create!(email:'admin@hotmail.fr',
              password: "123456",
              password_confirmation: "123456",
              admin: true)
puts "creation pizzas"

25.times do |i|•••••••
    Product.create!(
      name: "Pizza classique",
      description: "Lorem ispum",
      price: 11.99,
      catering: true
    )
end
puts "fin"
