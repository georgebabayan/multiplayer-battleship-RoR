class User < ApplicationRecord
	has_secure_password
	has_many :games
	has_many :sides
	has_many :messages

	validates :username, presence: true
	validates :username, uniqueness: true
end
