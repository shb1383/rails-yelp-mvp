# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'destroying old restaurants...'
Restaurant.destroy_all

puts 'creating 5 restaurants...'

category = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do
  resto = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category.sample
  )
  puts "#{resto.name} has been created."
end
puts 'Done!'
