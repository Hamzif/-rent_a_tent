# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  tent = Tent.new(
    address: Faker::Address.city,
    price: Faker::Commerce.price(range: 10.0..70.0, as_string: true),
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 2)
  )
  tent.save!
end
