class User < ApplicationRecord
	has_secure_password
	has_many :messages
	has_one :current_game1, foreign_key: "player1_id"
	has_one :current_game2, foreign_key: "player2_id"


	validates :username, presence: true
	validates :username, uniqueness: true
end
