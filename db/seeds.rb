Artist.destroy_all
Instrument.destroy_all
Play.destroy_all

10.times do
  Artist.create(name: Faker::Name.name, age: rand(1..100), bio: Faker::Hipster.sentence)
end

5.times do
  Instrument.create(name: Faker::Music.instrument, brand: Faker::Company.name)
end

10.times do 
  Play.create(artist_id: rand(1..10) , instrument_id: rand(1..5))
end
puts "File has been seeded! 🍀"
