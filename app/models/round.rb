class Round < ApplicationRecord
  belongs_to :user
  belongs_to :game
  serialize :board, JSON
  # b1 = self.board; b2 = self.board2
  # @board = [b1, b2]

  def fit_checker(s_p, direction, length_of_ship, board)

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


  def sheep_placer(s_p, direction,board,ship_length)
    row=s_p[0].to_i; col=s_p[1].to_i
    if direction == "down" || direction == 0
      i= 0 ;
      while i < ship_length
        board[row+i][col]="sheep"; i+=1
      end
      return board
    elsif direction == "right" || direction == 1
      i= 0 ;
      while i < ship_length
        board[row][i+col]="sheep" ; i+=1
      end

      return board
    else
      return "Wrong input!!"
    end
  end

  def sheep_shooter(position,board)
    row=position[0].to_i; col=position[1].to_i
    if board[row][col] == "grass"
      board[row][col]="miss_ground"
    else
      board[row][col]="DeadSheep"
    end
  end

  def finished?(board)
    count=0; total_number_of_sheep=31
    board.each do |row|
      count += row.count("sheep")
    end
    total_number_of_sheep == count
  end

  def winner?
  end
















































































































































end
