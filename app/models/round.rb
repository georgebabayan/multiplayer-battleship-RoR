class Round < ApplicationRecord
  belongs_to :user
  belongs_to :game

  serialize :board, JSON

  # b1 = self.board; b2 = self.board2
  # @board = [b1, b2]



  def fit_checker(s_p, direction, length_of_ship, player)
	  if player == "player1"
	  	board = @board[0]
	  elsif player == "player2"
	  	board = @board[1]
	  end 

	  	if direction == 'right'
	  		if (board[s_p[0]][(s_p[1])..length_of_ship]).include?("sheep")
	  			return false
	  		else 
				return true 
	  		end 
	  	elsif direction == 'left'
	  		if (board.transpond[s_p[0]][(s_p[1])..length_of_ship]).include?("sheep")
	  			return false
	  		else 
	  			return true 
	  		end 
	  	end
  

  end

  def sheep_placer(s_p, direction)

  end

  def sheep_shooter(position)

  end

  def finished?

  end

















































































































































end
