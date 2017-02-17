class SidesController < ApplicationController
	def index
		@side = Side.first
		@board = @side.board
	end
end
