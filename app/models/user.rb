class User < ApplicationRecord
	has_secure_password
	has_many :messages
	has_one :current_game1, foreign_key: "player1_id"
	has_one :current_game2, foreign_key: "player2_id"

	validates :username, presence: true
	validates :username, uniqueness: true

	after_initialize :init

  def init
    self.game_won = 0
    self.game_lost = 0
  end

end
