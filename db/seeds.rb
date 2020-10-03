# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all
puts 'all cocktails destroyed'
lemon = Ingredient.create!(name: "lemon")
ice = Ingredient.create!(name: "ice")
mint_leaves = Ingredient.create!(name: "mint leaves")
puts 'ingredient bien créé'
# cocktails et doses

mojito = Cocktail.create!(name: "Mojito")
pignacolada = Cocktail.create!(name: "Pignacolada")
orange_juice = Cocktail.create!(name: "Orange Juice")
puts 'cocktail créé'
Dose.create!(cocktail: mojito, ingredient: lemon, description: '2cl vodkha')
Dose.create!(cocktail: pignacolada, ingredient: mint_leaves, description: 'Ananas saveur')
Dose.create!(cocktail: orange_juice, ingredient: ice, description: 'Frais et pressé maison')
puts 'dose créée'
