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

puts "Create User"

@toto = User.create!(first_name: 'toto', last_name: 'titi', email: 'toto@gmail.com', address: '20 Saint-Jacques, 44850 Saint-Mars-du-Désert', password: "azerty")
@karl = User.create!(first_name: 'karl', last_name: 'marx', email: 'karl@gmail.com', address: '20 Saint-Jacques, 44850 Saint-Mars-du-Désert', password: "azerty")
@sarah = User.create!(first_name: 'sarah', last_name: 'menu', email: 'sarah@gmail.com', address: '20 Saint-Jacques, 44850 Saint-Mars-du-Désert', password: "azerty")
@val = User.create!(first_name: 'val', last_name: 'chauveau', email: 'val@gmail.com', address: '20 Saint-Jacques, 44850 Saint-Mars-du-Désert', password: "azerty")
@julie = User.create!(email: 'galène.calum@gmail.com', first_name: 'julie', last_name: 'Coquillart', address: '20 Saint-Jacques, 44850 Saint-Mars-du-Désert', password: "azerty")
@agathe = User.create!(email: 'anastase.rochera@gmail.com', first_name: 'Anatase', last_name: 'Gravelle', address: 'Gaudant 17 rue du Dr Magnan, 75013 Paris', password: "azerty")

puts "Create Wigs"

@chouchouwig = Wig.create!(user: @toto, name: 'chouchou', color: 'blue', shape: 'thin', description: 'super wig yo!', price: 50)
@perruque = Wig.create!(user: @toto, name: 'perruque', color: 'red', shape: 'thick', description: 'nice one', price: 20)
@haircool = Wig.create!(user: @karl, name: 'haircool', color: 'red', shape: 'thick', description: 'nice one', price: 20)
@wiggy = Wig.create!(user: @karl, name: 'haircool', color: 'red', shape: 'thick', description: 'nice one', price: 20)

puts "Images to wigs"

file = URI.open('https://res.cloudinary.com/dwp9byvnr/image/upload/v1655913031/wig1_rbiufq.png')
@chouchouwig.photo.attach(io: file, filename: 'chouchouwig.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwp9byvnr/image/upload/v1655913030/wig2_ikdsjj.png')
@perruque.photo.attach(io: file, filename: 'perruque.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwp9byvnr/image/upload/v1655913911/wig3_ujaxrh.png')
@haircool.photo.attach(io: file, filename: 'haircool.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwp9byvnr/image/upload/v1655913911/wig4_xfrm03.png')
@wiggy.photo.attach(io: file, filename: 'wiggy.png', content_type: 'image/png')

puts 'done'
