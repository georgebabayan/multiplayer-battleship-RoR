# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fun.destroy_all
User.destroy_all
george = User.create!(username: 'maffin', password: 'password')
jon = User.create!(username: 'jonb', password: 'password')

board1 = Array.new(10)  {Array.new(10, 'grass')}
board2 = Array.new(10)  {Array.new(10, 'grass')}
board3 = Array.new(10)  {Array.new(10, 'grass')}
board4 = Array.new(10)  {Array.new(10, 'grass')}

Fun.create!(board1: board1, board2: board2,
board1_display: board3, board2_display: board4, player1: george, player2: jon)

# fun2 = Fun.create!(board1: board1, board2: board2,
# board1_display: board3, board2_display: board4 )
