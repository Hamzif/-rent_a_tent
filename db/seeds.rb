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
    description: "Your home away from home shouldn't skimp on the essentials. The 3-season REI Co-op Half Dome 2 Plus backpacking tent provides you and a partner with plenty of room to stretch out and stay comfortable.",
    remote_photo_url: "https://www.rei.com/media/product/128692"
  )

  tent2 = Tent.create!(
    user: owner,
    address: 'Madrid',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Kelty Discovery 4-Person Tent',
    description: "Rest easy with friends in the roomy, weatherproof, easy-to-set-up Kelty Discovery Dome 4 tent.",
    remote_photo_url: "https://www.rei.com/media/product/129516"
  )

  tent3 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'NEMO Hornet 2-Person Tent',
    description: "With spacious vestibules, NEMO Hornet 2 tent offers backpackers great livability. You can share (Divvy™ 2-stage stuff sacks lets you split the load with a partner) or sleep in a palace for one.",
    remote_photo_url: "https://www.rei.com/media/product/168403"
  )

    tent4 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'ALPS Mountaineering Tent',
    description: "Built for 4 campers and 3-season fun, the freestanding ALPS Mountaineering Meramac 4 is perfect for family camping trips.",
    remote_photo_url: "https://www.rei.com/media/product/141360"
  )

  tent5 = Tent.create!(
    user: owner,
    address: 'Sevilla',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'The North Face Stormbreak 2-Person Tent',
    description: "With large doors and 2 multi-configuration vestibules, The North Face Stormbreak 2 tent offers easy access and a great view of the great outdoors for 2 campers through 3 seasons.",
    remote_photo_url: "https://www.rei.com/media/product/110883"
  )

  tent6 = Tent.create!(
    user: owner,
    address: 'Madrid',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Camp Creek 2-Room Tent',
    description: "A home away from home when you're camping with a group of family or friends, the 6-person, 3-season ALPS Mountaineering Camp Creek 2-room tent offers cabin-style comfort with a tall center height.",
    remote_photo_url: "https://www.rei.com/media/product/142397"
  )

    tent7 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Big Agnes 4-Person Deluxe Tent',
    description: "A 3-season, 4 person tent with ample living space and an extra-large vestibule, the full-featured Big Agnes Copper Hotel HV UL 2 tent makes living in the backcountry convenient and enjoyable.",
    remote_photo_url: "https://www.rei.com/media/product/895812"
  )

  tent8 = Tent.create!(
    user: owner,
    address: 'Sevilla',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Kelty Discovery Dome 6-Person Tent',
    description: "You and up to 5 fellow campers will stay comfortable and dry with the 3-season Kelty Discovery Dome 6 tent, which has sealed seams, a bathtub floor and excellent ventilation.",
    remote_photo_url: "https://www.rei.com/media/product/112236"
  )

  tent9 = Tent.create!(
    user: owner,
    address: 'Madrid',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Marmot Limestone 6-Person Tent',
    description: "Large families are in for big-time fun with the Marmot Limestone 6P tent, a spacious, simple-to-pitch camping tent designed to hold up to whatever the kids and Mother Nature can dish out.",
    remote_photo_url: "https://www.rei.com/media/product/880483"
  )

  tent10 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Marmot Tungsten 4-Person Tent',
    description: "Perfectly suited to life on the trail, the Marmot Tungsten 4P tent offers reliable weather protection, long-lasting construction and plenty of space for your adventuring party of 4.",
    remote_photo_url: "https://www.rei.com/media/product/136057"
  )

  tent11 = Tent.create!(
    user: owner,
    address: 'Barcelona',
    price: Faker::Commerce.price(range: 10.0..50.0).round,
    title: 'Patagonia Backpacking 2-Person Tent',
    description: "The 3-season, 2-person Patagonia tent balances durability, packability and livability thanks to an award-winning pole configuration that creates maximum interior livable space for the weight.",
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

