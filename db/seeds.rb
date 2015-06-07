# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Engine.create!(
#   name: "some engine",
#   price: 123.23,
#   description: "some desc"
# )

10.times do |n|
  name = Faker::Commerce.product_name
  price = Faker::Commerce.price
  description = Faker::Commerce.department
  Engine.create!(
    name: name,
    price: price,
    description: description
  )
end
