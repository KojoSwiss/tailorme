require "open-uri"
puts 'Cleaning the database'

Tailor.destroy_all
User.destroy_all

cities = ['Zurich', 'London', 'Paris', 'Bern', 'Vienna', 'Nice', 'Milan']


puts 'DB is clean, Seeding tailors...'

10.times do
  tailor = Tailor.new(
    shop_name: Faker::Ancient.hero,
    description: Faker::Restaurant.description,
    review: Faker::Restaurant.review,
    rating:  rand(1..5),
    address: cities.sample

    )
    file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
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
