# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Book.destroy_all

10.times do
  garden_request = RestClient.get("https://source.unsplash.com/1200x700/?garden")
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author,
    editor: Faker::Book.publisher,
    genre: Faker::Book.genre,
    image_url: garden_request.request.url
  )
end
