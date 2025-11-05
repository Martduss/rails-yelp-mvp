# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0487412413", category: "belgian")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0487411413", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "MacDo", address: "Avenue de la citronelle 26 1340 Ottignies", phone_number: "0497411413", category: "italian")
puts "Created McDo"
Restaurant.create!(name: "Peniche", address: "rue de la boulette 10 1360 Wavre", phone_number: "0487000000", category: "french")
puts "Peniche"
Restaurant.create!(name: "Chez Didier", address: "rue de la cendre 10 1360 Jodoigne", phone_number: "0487999999", category: "chinese")
puts "Chez Didier"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
