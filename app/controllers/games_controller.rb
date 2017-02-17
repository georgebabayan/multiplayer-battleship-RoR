class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
		@messages = @game.conversation.messages
		@message = Message.new

	end

	def new
		@message = Message.new
	end

end
