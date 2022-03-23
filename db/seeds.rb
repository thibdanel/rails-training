# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

puts 'deleting all casques'
Casque.destroy_all
puts 'ok deleted'

puts 'creating customed casques'

file1 = URI.open('https://www.hollandbikes.com/img/cms/CMS/ACCESSOIRES%20VELOS/casque%20velo%20ville%20(9).jpg')
file2 = URI.open('http://cdn.shopify.com/s/files/1/0527/1276/7641/collections/120073699_3420219268016191_4089162155462419051_n.jpg?v=1635761327')
file3 = URI.open('https://i.pinimg.com/564x/7e/61/00/7e61004d87da66378f148794e2ffdfcb.jpg')
file4 = URI.open('https://i.f1g.fr/media/figaro/orig/2015/10/22/XVM18e9b8aa-78cc-11e5-9707-095b2a25260e-805x453.jpg')
file5 = URI.open('https://cdn.shopify.com/s/files/1/0288/2754/9784/products/Casque-closca-noir-1_800x.png?v=1639209269')
file6 = URI.open('http://www.tonsor-cie.com/wp-content/uploads/2016/06/image-EGIDE.jpg')
file7 = URI.open('https://blog.zoov.io/content/images/2021/02/casque-velo-pliable-fend.jpg')
file8 = URI.open('https://m2.jesuisavelo.com/2834-thickbox_default/casque-de-velo-urbain-heritage-thousand.jpg')
file9 = URI.open('https://www.weelz.fr/fr/wp-content/uploads/2020/08/weelz-test-casque-velo-urbain-abus-hyban-2-0-2020-3980.jpg')
file10 = URI.open('https://blog.ekosport.fr/wp-content/uploads/2021/04/homme-securite-casque-velo-vtt.jpg')
file11 = URI.open('https://blog.ekosport.fr/wp-content/uploads/2021/04/Casque-velo-comment-le-choisir-pour-assurer-sa-securite.jpg')
file12 = URI.open('https://www.hollandbikes.com/img/cms/CMS/ACCESSOIRES%20VELOS/casque%20velo%20ville%20(4).jpg')

casque1 = Casque.new(nom: 'Thibault', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque1.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
casque1.save

casque2 = Casque.new(nom: 'Charles', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
casque2.save

casque3 = Casque.new(nom: 'Arnie', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
casque3.save

casque4 = Casque.new(nom: 'Tom', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque4.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
casque4.save

casque5 = Casque.new(nom: 'Oscar', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque5.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
casque5.save

casque6 = Casque.new(nom: 'Mike', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque6.photo.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
casque6.save

casque7 = Casque.new(nom: 'Arnie', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque7.photo.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
casque7.save

casque8 = Casque.new(nom: 'Titin', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque8.photo.attach(io: file8, filename: 'nes.png', content_type: 'image/png')
casque8.save

casque9 = Casque.new(nom: 'Mike', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque9.photo.attach(io: file9, filename: 'nes.png', content_type: 'image/png')
casque9.save

casque10 = Casque.new(nom: 'Daddy', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque10.photo.attach(io: file10, filename: 'nes.png', content_type: 'image/png')
casque10.save

casque11 = Casque.new(nom: 'Mina', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque11.photo.attach(io: file11, filename: 'nes.png', content_type: 'image/png')
casque11.save

casque12 = Casque.new(nom: 'La loute', couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample, marque: 'Shubert', prix: rand(50..100))
casque12.photo.attach(io: file12, filename: 'nes.png', content_type: 'image/png')
casque12.save

# puts 'Creating 20 fake casques...'
# 10.times do
#   casque = Casque.new(
#     nom: Faker::Company.name,
#     marque: Faker::Name.unique.name,
#     prix: rand(50..100),
#     couleur: ["Bleu", "Vert", "Rouge", "Jaune", "Rose"].sample
#   )
#   casque.save!
# end

puts "#{Casque.count} casques has been created"

puts 'Finished!'
