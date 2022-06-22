# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "reset seed"

Request.destroy_all
Wig.destroy_all
User.destroy_all

puts "Create Wigs"

perruque1 = Wig.create(id: 1, name: 'cool', color: 'blue', shape: 'thin', description: 'super wig yo!')

perruque2 = Wig.create(id: 2, name: 'kiki', color: 'red', shape: 'thick', description: 'nice one')

puts 'done'

p perruque1
p perruque2
