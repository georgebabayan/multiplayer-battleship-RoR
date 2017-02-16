class Round < ApplicationRecord
  belongs_to :user
  belongs_to :game
  serialize :board, JSON
  # b1 = self.board; b2 = self.board2
  # @board = [b1, b2]

  #=== fleet ===#

  # rows << ['Carrier!', 5, 1]
  # rows << ['Battleship', 4,1]
  # rows << ['Cruiser', 3,1]
  # rows << ['Destroyer', 2,2]
  # rows << ['Submarine', 1,2]

  def fit_checker(arg={})
    s_p  = arg.s_p
    direction = arg.direction
    board = arg.board
    size_ship = arg.size_ship

    if  direction == 'right'  && ((s_p[0] + size_ship) > board.size)
      return false
    elsif  direction == 'down'  && ((s_p[1] + size_ship) > board.size)
      return false
    end

    if direction == 'right'
      return !((board[s_p[0]][(s_p[1])..size_ship]).include?("sheep"))
    elsif direction == 'down'
      return !((board.transpose[s_p[0]][(s_p[1])..size_ship]).include?("sheep"))
    end

  end


  def sheep_placer(arg={})
    s_p  = arg.s_p
    direction = arg.direction
    board = arg.board
    size_ship = arg.size_ship


    row=s_p[0].to_i; col=s_p[1].to_i
    if direction == "down" || direction == 0
      i= 0 ;
      while i < size_ship
        board[row+i][col]="sheep"; i+=1
      end
      return board
    elsif direction == "right" || direction == 1
      i= 0 ;
      while i < size_ship
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
