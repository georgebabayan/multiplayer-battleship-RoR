# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Round.destroy_all
# Game.destroy_all

board = Array.new(10, Array.new(10, 'grass'))

george = User.create!(username: 'maffin', password: 'password')
jon = User.create!(username: 'jonb', password: 'password')

game1 = Game.create!(winner: jon, loser: george)
Round.create!(user: george, board: board, board2: board, game: game1)


