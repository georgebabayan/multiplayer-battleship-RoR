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
		if params[:size_ship]
			s_p = [params[:s_p_x].to_i, params[:s_p_y].to_i]

			if current_user.username == @fun.player1.username
				args = {'size_ship' => params[:size_ship].to_i, 'direction' => params[:direction], 's_p' => s_p, 'board' => @fun.board1}
			else
				args = {'size_ship' => params[:size_ship].to_i, 'direction' => params[:direction], 's_p' => s_p, 'board' => @fun.board2}
			end

			@fun.sheep_placer(args)
		else
			position = [params[:X].to_i, params[:Y].to_i]
			if current_user.username == @fun.player1.username
				@fun.sheep_shooter(position, @fun.board1_display)
			else
				@fun.sheep_shooter(position, @fun.board2_display)
			end
		end
		@fun.save

		redirect_to "/funs/#{@fun.id}"


	end



end

# need to display board with all grass
# updates on click
# saves
