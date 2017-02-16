class User < ApplicationRecord
	has_secure_password
	has_many :games
	has_many :sides

	validates :username, presence: true
	validates :username, uniqueness: true
end
