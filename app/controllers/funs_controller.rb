class FunsController < ApplicationController
	skip_before_filter  :verify_authenticity_token
	def index
		@funs = Fun.all
	end

	def show

		@fun = Fun.find(params[:id])
		@user = current_user

	end

	def new
		@message = Message.new
	end


	def update
		@fun = Fun.find(params[:id])
		position = [params[:X].to_i, params[:Y].to_i]
		 @fun.sheep_shooter(position, @fun.board1)
		 @fun.sheep_shooter(position, @fun.board2_display)
		 @fun.save
		 redirect_to "/funs/#{@fun.id}"
	end



end

# need to display board with all grass
# updates on click
# saves
