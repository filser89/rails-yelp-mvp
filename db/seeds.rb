Restaurant.destroy_all

20.times do
  r = Restaurant.create!(name: Faker::Movie.title,
                         address: Faker::Address.street_address,
                         phone_number: Faker::PhoneNumber.cell_phone_in_e164,
                         category: Restaurant::CATEGORY.sample)
  puts "Created #{r.name}"
end
