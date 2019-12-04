# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "start seeding"
Tent.destroy_all
User.destroy_all
5.times do
  user = User.new(
    email: Faker::Internet.email(domain: 'example'),
    first_name: Faker::Internet.username,
    last_name: Faker::Internet.username,
    password: Faker::Internet.password,
    description: Faker::Lorem.sentence(word_count: 10),
    avatar: Faker::LoremFlickr.image(size: "40x40", search_terms: ['face'])
  )
  user.save!

  3.times do
    url = "https://source.unsplash.com/random?tent"
    tent = Tent.new(
      user: user,
      address: Faker::Address.city,
      price: Faker::Commerce.price(range: 10.0..70.0).round,
      title: Faker::Commerce.product_name,
      description: Faker::Lorem.paragraph(sentence_count: 3)
    )
    tent.remote_photo_url = url
    tent.save!
    sleep(3)
  end
end

puts "finish seeding"
