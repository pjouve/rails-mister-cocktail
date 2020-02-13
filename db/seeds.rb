# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating Ingredients...'
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create!(name: "ice")
mint = Ingredient.create!(name: "mint leaves")

puts 'Creating Coctails...'
mojito = Cocktail.create!(name: "Mojito")
capi = Cocktail.create!(name: "Capi")

puts 'Creating Doses...'
dose1 = Dose.create!(description: "5ml", ingredient: lemon, cocktail: mojito)
dose2 = Dose.create!(description: "piler la glace avant", ingredient: ice, cocktail: mojito)

puts 'Finished!'
