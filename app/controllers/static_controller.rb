class StaticController < ApplicationController
	def homepage
		# @side = Side.first
		# @board = @side.board.to_a
		@funs = Fun.all
	end
end
