class User < ApplicationRecord
	has_secure_password
	has_many :sides
	has_many :games, through: :sides
	has_many :messages
	has_many :conversations, through: :messages

	validates :username, presence: true
	validates :username, uniqueness: true
end
