class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show

		@game = Game.find(params[:id])
		@board = @game.sides.last.board
		@user = current_user


		p "INSIDE SHOW VIEW-------------------- " * 3
		@stages = @game.stages
		if !@game.stages.last
			p @stage = Stage.create!(game_id: @game.id, player1_move: true)
		else
			@stage = @game.stages.last
		end
		@messages = @game.conversation.messages
		@message = Message.new

	end

	def new
		@message = Message.new
	end

end

# need to display board with all grass
# updates on click
# saves
