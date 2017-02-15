# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.all.destroy
Round.all.destroy
Game.all.destroy

board = Array.new(20, Array.new(10, 'grass'))

george = User.create!(username: 'maffin', password: 'password')
jon = User.create!(username: 'jonb', password: 'password')

game1 = Game.create!(winner: jon, loser: george)
Round.create!(user: george, board: board, game: game1)


