require "faker"
puts 'cleaning DB..'
Restaurant.destroy_all

puts 'Creating new restaurants...'

6.times do
Restaurant.create(name: Faker::Restaurant.name,
                                    address: Faker::Address.street_address,
                                    phone_number: "017632793602",
                                    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end
