# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cory = Artist.create(name: 'Cory', bio: 'Super awesome')
tom = Artist.create(name: 'Tom', bio: 'Super nice')
genre = Genre.create(name: 'nursery rhyme')
genre = Genre.create(name: 'love song')
song1 = Song.create(name: 'Sing me a Lullaby', artist_id: 3, genre_id: 1)
song2 = Song.create(name: 'Sing me a Love Song', artist_id: 2, genre_id: 2)