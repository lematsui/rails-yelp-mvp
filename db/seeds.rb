require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

restaurants = []
categories = %w[chinese italian japanese french belgian]
ratings = [0, 1, 2, 3, 4, 5]

5.times do
  restaurants << {
    name: Faker::RickAndMorty.character,
    address: Faker::RickAndMorty.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
  }
end

Restaurant.create!(restaurants)
puts 'Finished'
