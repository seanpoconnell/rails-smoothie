# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# -----------------------------------------------------
puts 'destroying all ingredients!'
Ingredient.delete_all
Ingredient.reset_pk_sequence
puts 'DB cleaned!'

puts 'creating ingredients'
Ingredient.create!(name: 'frozen banana')
Ingredient.create!(name: 'protein powder')
Ingredient.create!(name: 'chia seeds')
Ingredient.create!(name: 'flax seeds')
Ingredient.create!(name: 'peanut butter')
Ingredient.create!(name: 'spinach')
Ingredient.create!(name: 'kale')
Ingredient.create!(name: 'mixed berries')
Ingredient.create!(name: 'milk')
Ingredient.create!(name: 'yoghurt')
Ingredient.create!(name: 'honey')
Ingredient.create!(name: 'maple syrup')
Ingredient.create!(name: 'coffee')
Ingredient.create!(name: 'cocoa powder')
Ingredient.create!(name: 'strawberries')
Ingredient.create!(name: 'pineapple chuncks')
Ingredient.create!(name: 'orange')
Ingredient.create!(name: 'vanilla extract')

puts 'creating doses!'
Doses.create!(description: 'ml')
Doses.create!(description: 'tsp')
Doses.create!(description: 'tbsp')
Doses.create!(description: 'cup')

# -----------------------------------------------------
puts 'destroying all smoothies!'
Smoothie.delete_all
Smoothie.reset_pk_sequence
# Smoothie.destroy_all
puts 'DB cleaned'

puts 'creating smoothies!'

Smoothie.create!(name: 'Pina Colada')
Smoothie.create!(name: 'Mocha')
Smoothie.create!(name: 'Mixed Berry')
# ----------------------------------------------------
puts 'Completed!'
