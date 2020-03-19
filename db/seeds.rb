# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "start seeding"
Booking.destroy_all
Tent.destroy_all
User.destroy_all


  owner = User.create!(
    email: Faker::Internet.email(domain: 'example'),
    first_name: Faker::Internet.username,
    last_name: Faker::Internet.username,
    password: "123456",
    description: Faker::Lorem.sentence(word_count: 10),
    avatar: Faker::LoremFlickr.image(size: "40x40", search_terms: ['face'])
  )

  tent1 = Tent.create!(
    user: owner,
    address: 'Sevilla',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'REI Half-Dome 2-Person Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/128692"
  )

  tent2 = Tent.create!(
    user: owner,
    address: 'Madrid',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Kelty Discovery 2-Person Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/129516"
  )

  tent3 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'NEMO Hornet 2-Person Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/168403"
  )

    tent4 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'ALPS Mountaineering Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/141360"
  )

  tent5 = Tent.create!(
    user: owner,
    address: 'Sevilla',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'The North Face Stormbreak 2-Person Tent'
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/110883"
  )

  tent6 = Tent.create!(
    user: owner,
    address: 'Madrid',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Camp Creek 2-Person Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/141933"
  )

    tent7 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Big Agnes 4-Person Deluxe Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/895812"
  )

  tent8 = Tent.create!(
    user: owner,
    address: 'Sevilla',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Kelty Discovery Dome 6-Person Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/112236"
  )

  tent9 = Tent.create!(
    user: owner,
    address: 'Madrid',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Marmot Limestone 6-Person Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/880483"
  )

  tent10 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Marmot Discovery 4-Person Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/136057"
  )

  tent11 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Patagonia Backpacking 2-Person Tent',
    description: Faker::Lorem.paragraph(sentence_count: 3),
    remote_photo_url: "https://www.rei.com/media/product/164193"
  )

  booker = User.create!(
    email: Faker::Internet.email(domain: 'example'),
    first_name: Faker::Internet.username,
    last_name: Faker::Internet.username,
    password: "123456",
    description: Faker::Lorem.sentence(word_count: 10),
    avatar: Faker::LoremFlickr.image(size: "40x40", search_terms: ['face'])
  )

  tent = [tent1, tent2, tent3, tent4, tent5, tent6, tent7, tent8, tent9, tent10, tent11]

5.times do

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

