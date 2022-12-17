# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "creation user"

User.create!(email:'admin@hotmail.fr',
              password: "123456",
              password_confirmation: "123456",
              admin: true)
puts "creation pizzas"

Category.create!(heading: 'pizza', body: "cest super bon", display: true)
Category.create!(heading: 'pates', body: "succulant!", display: true)
Category.create!(heading: 'dessert', body: "creme glacé delicieuse !", display: true)

10.times do |i|
    pizza = Product.new(
      name: "Pizza classique",
      description: "Lorem ispum",
      price: 11.99,
      catering: true,
      category: Category.find(1)
    )


    pasta = Product.new(
      name: "Pasta",
      description: "Lorem ispum",
      price: 8.99,
      catering: true,
      category: Category.find(2)
    )

    dessert = Product.new(
      name: "glace",
      description: "Lorem ispum",
      price: 5.99,
      catering: true,
      category: Category.find(3)
    )

    pizza.image.attach(io: URI.open('https://picsum.photos/1920/1080'), filename: "#{i}_pizza_image.jpg")
    pasta.image.attach(io: URI.open('https://picsum.photos/1920/1080'), filename: "#{i}_pasta_image.jpg")
    dessert.image.attach(io: URI.open('https://picsum.photos/1920/1080'), filename: "#{i}_dessert_image.jpg")

    if i == 5
      pizza.featured = true
      pasta.featured = true
      dessert.featured = true
    end

    pizza.save
    pasta.save
    dessert.save
end


puts "fin"
