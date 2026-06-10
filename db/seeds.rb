puts "Limpando o banco de dados"
Restaurant.destroy_all

puts "Criando restaurantes..."

categories = [ "chinese", "italian", "japanese", "french", "belgian" ]

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
  )
  puts "Restaurantes criado com o id: ${restaurant.id}"
end

puts "Fim."
