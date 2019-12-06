# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "start seeding"
Booking.destroy_all
Tent.destroy_all
User.destroy_all

5.times do
  owner = User.create!(
    email: Faker::Internet.email(domain: 'example'),
    first_name: Faker::Internet.username,
    last_name: Faker::Internet.username,
    password: "123456",
    description: Faker::Lorem.sentence(word_count: 10),
    avatar: Faker::LoremFlickr.image(size: "40x40", search_terms: ['face'])
  )

  tent3 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..70.0).round,
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://source.unsplash.com/random?tent"
  )

  tent1 = Tent.create!(
    user: owner,
    address: 'Sevilla',
    price: Faker::Commerce.price(range: 10.0..70.0).round,
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://source.unsplash.com/random?tent"
  )


  tent2 = Tent.create!(
    user: owner,
    address: 'Madrid',
    price: Faker::Commerce.price(range: 10.0..70.0).round,
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://source.unsplash.com/random?tent"
  )

  booker = User.create!(
    email: Faker::Internet.email(domain: 'example'),
    first_name: Faker::Internet.username,
    last_name: Faker::Internet.username,
    password: "123456",
    description: Faker::Lorem.sentence(word_count: 10),
    avatar: Faker::LoremFlickr.image(size: "40x40", search_terms: ['face'])
  )

  tent = [tent1, tent2, tent3]

  booking = Booking.create!(
    user: booker,
    # Access the Owner through the Tent
    tent: tent.sample,
    start_date: Date.today,
    end_date: Date.today + 1.week
  )

  puts "created one owner, tent, booker, booking"
  sleep(3)
end

puts "finish seeding"

