class RoundsController < ApplicationController
	def index
		@round = Round.first
		@board = @round.board
	end
end

