# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying Cut..."
Cut.destroy_all
puts "Creating Cut..."

cut1 = Cut.new(price: 20, description: 'Coupe Homme + Barbe')
cut1.save
cut2 = Cut.new(price: 15, description: 'Coupe Homme')
cut2.save

puts "Done #{Cut.size}"
