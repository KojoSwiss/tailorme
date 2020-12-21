require "open-uri"
puts 'Cleaning the database'

Tailor.destroy_all


cities = ['Zurich', 'London', 'Paris', 'Bern', 'Vienna', 'Nice', 'Milan', 'Nancy', 'Jena', 'Cologne']

images = ['https://miro.medium.com/max/8160/1*g2rWkmY0VEjFLNmDGwZakg.jpeg',
          'https://miro.medium.com/max/1030/1*bMmMv9en0Qyik9mLfWFKTw.jpeg',
          'https://www.macleans.ca/wp-content/uploads/2014/09/MAC36_WOMENS_CLOTHES_POST.jpg',
          'https://imgmedia.lbb.in/media/2018/07/5b4466ee235c4e012db6c3fe_1531209454277.jpg',
          'https://static.dw.com/image/51539939_401.jpg']


puts 'DB is clean, Seeding tailors...'

10.times do
  tailor = Tailor.new(
    shop_name: Faker::Ancient.hero,
    description: Faker::Restaurant.description,
    review: Faker::Restaurant.review,
    rating:  rand(1..5),
    address: cities.sample

    )
    file = URI.open(images.sample)
    tailor.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  puts "#{tailor.shop_name} done"
  tailor.save!
end
puts 'Done'

# puts 'Seeding Users'

# user = User.new(
#   email: 'user@example.com'
#   password: '123456'
#   )

# puts 'Seeding complete'
