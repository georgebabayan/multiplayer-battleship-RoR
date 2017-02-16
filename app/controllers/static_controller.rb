class StaticController < ApplicationController
	def homepage
		@round = Round.first
		@board = @round.board.to_a
	end
end

