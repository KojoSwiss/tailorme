puts 'Cleaning the database'

Tailor.destroy_all
User.destroy_all


puts 'DB is clean, Seeding tailors...'

10.times do
  tailor = Tailor.new(
    shop_name: Faker::Ancient.hero,
    description: Faker::Restaurant.description,
    review: Faker::Restaurant.review,
    rating:  rand(1..5),
    address: Faker::Address.city
    )
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
