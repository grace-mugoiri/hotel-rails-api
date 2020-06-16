# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# h = Hotel.create(:rooms => 5, :bedrooms => 9, :roomservice => true, :favCount=> 2)
# h.save!

Hotel.create(rooms: 4, bedrooms: 8, roomservice: false, favCount: 3, user_id: 1)
Hotel.create(rooms: 3, bedrooms: 7, roomservice: true, favCount: 4, user_id: 1)
Hotel.create(rooms: 2, bedrooms: 6, roomservice: false, favCount: 5, user_id: 1)
Hotel.create(rooms: 1, bedrooms: 5, roomservice: true, favCount: 6, user_id: 1)
Hotel.create(rooms: 1, bedrooms: 5, roomservice: true, favCount: 6, user_id: 1)
