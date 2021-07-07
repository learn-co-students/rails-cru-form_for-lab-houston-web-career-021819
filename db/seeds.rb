# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
Artist.destroy_all
Genre.destroy_all

frank = Artist.new
frank.name = "Frank Ocean"
frank.bio = "A potato flew around my room."
self_control = Song.new
self_control.name = "Self Control"
r_b = Genre.new
r_b.name = "R&B"
r_b.songs << self_control
frank.songs << self_control


maxwell = Artist.new
maxwell.name = "Maxwell"
maxwell.bio = "I've never heard of him."
pretty_wings = Song.new
pretty_wings.name = "Pretty Wings"
r_b.songs << pretty_wings
maxwell.songs << pretty_wings

cody_johnson = Artist.new
cody_johnson.name = "Cody Johnson"
cody_johnson.bio = "Something about red dirt and horses."
country_song = Song.new
country_song.name = "Red Dirt & Horses"
country = Genre.new
country.name = "Country"
country.songs << country_song
cody_johnson.songs << country_song

frank.save
maxwell.save
r_b.save
self_control.save
pretty_wings.save
country.save
country_song.save
cody_johnson.save