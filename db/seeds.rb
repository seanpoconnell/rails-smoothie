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
Ingredient.create!(name: 'pineapple chunks')
Ingredient.create!(name: 'milk')
Ingredient.create!(name: 'honey')
Ingredient.create!(name: 'syrup')

# -----------------------------------------------------
puts 'destroying all smoothies!'
Smoothie.delete_all
Smoothie.reset_pk_sequence
# Smoothie.destroy_all
puts 'DB cleaned'

puts 'creating smoothies!'

Smoothie.create!(name: 'Pina Colada')
# ----------------------------------------------------
puts 'Completed!'
