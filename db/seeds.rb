# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all
Genre.destroy_all

Artist.create(name: "John", bio: "I love music")
Artist.create(name: "Emily", bio: "Shit is amazing")

Genre.create(name:"Pop")
Genre.create(name:"Rap")

Song.create(name: "Money Gang", artist_id: 1, genre_id: 1)
Song.create(name: "All is Well", artist_id: 2, genre_id: 2)
