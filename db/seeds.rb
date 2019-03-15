# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

elivs = Artist.create(name: "Elvis", bio: "Born in 192... Elvis.... waffle waffle...")
edm = Genre.create(name: "EDM")
Song.create(name: "houndog remix", artist: elivs, genre: edm)