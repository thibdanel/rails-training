# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


puts 'deleting all casques'
Casque.destroy_all
puts 'ok deleted'

# puts 'creating customed casques'
# casque1 = Casque.new(nom: 'Thibault', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))

puts 'Creating 20 fake casques...'
10.times do
  casque = Casque.new(
    nom: Faker::Company.name,
    marque: Faker::Name.unique.name,
    prix: rand(50..100),
    couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample
  )
  casque.save!
end
puts 'Finished!'
