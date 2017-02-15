class Game < ApplicationRecord
	has_many :rounds
	has_many :users, through: :rounds
	belongs_to :winner, class_name: "User", foreign_key: "winner_id"
	belongs_to :loser, class_name: "User", foreign_key: "loser_id"

end
