# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
10.times do
  City.create!(name: Faker::Address.city)
end

Stroll.destroy_all
10.times do
  Stroll.create!()
end

Dog.destroy_all
10.times do
  Dog.create!(nick_name: Faker::Name.first_name, city: City.all.sample)
end

DogSitter.destroy_all
10.times do
  DogSitter.create!(name: Faker::Name.first_name, city: City.all.sample)
end

DogInscription.destroy_all
20.times do
  DogInscription.create!(dog: Dog.all.sample, stroll: Stroll.all.sample)
end

DogSitterInscription.destroy_all
20.times do
  DogSitterInscription.create!(stroll: Stroll.all.sample, dog_sitter: DogSitter.all.sample)
end

