# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
swagger = Artist.create(name:'Swagger McJagger', bio:'swag')
jazz = Genre.create(name:'jazz')
song = Song.create(name:'Sweg',artist_id:1, genre_id: 2)
