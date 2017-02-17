class Side < ApplicationRecord
  belongs_to :user
  belongs_to :game
  serialize :board, JSON
  # b1 = self.self.board; b2 = self.self.board2
  # @self.board = [b1, b2]

  #=== fleet ===#

  # rows << ['Carrier!', 5, 1]
  # rows << ['Battleship', 4,1]
  # rows << ['Cruiser', 3,1]
  # rows << ['Destroyer', 2,2]
  # rows << ['Submarine', 1,2]

  def fit_checker(args={})
    s_p  = args["s_p"]
    direction = args["direction"]
    size_ship = args["size_ship"]

    if  direction == 'right'  && ((s_p[0] + size_ship) > self.board.size)
      return false
    elsif  direction == 'down'  && ((s_p[1] + size_ship) > self.board.size)
      return false
    end

    if direction == 'right'
      return !((self.board[s_p[0]][(s_p[1])..size_ship]).include?("sheep"))
    elsif direction == 'down'
      return !((self.board.transpose[s_p[0]][(s_p[1])..size_ship]).include?("sheep"))
    end

  end

#args={"s_p" => [1,1],"direction"=>"right", "size_ship"=>4 }
  def sheep_placer(args={})
    s_p  = args["s_p"]
    direction = args["direction"]
    size_ship = args["size_ship"]


    row=s_p[0].to_i; col=s_p[1].to_i
    if direction == "down" || direction == 0
      i= 0 ;
      while i < size_ship
        self.board[row+i][col]="sheep"; i+=1
      end
      return self.board
    elsif direction == "right" || direction == 1
      i= 0 ;
      while i < size_ship
        self.board[row][i+col]="sheep" ; i+=1
      end

      return self.board
    else
      return "Wrong input!!"
    end
  end

  def sheep_shooter(position)
    row=position[0].to_i; col=position[1].to_i
    if self.self.board[row][col] == "grass"
      self.self.board[row][col]="miss_ground"
    elsif self.self.board[row][col]=="sheep"
      self.self.board[row][col]="DeadSheep"
    end
  end

  def finished?
    count=0; total_number_of_sheep=31
    self.board.each do |row|
      count += row.count("sheep")
    end
    total_number_of_sheep == count
  end

  def winner?
  end



end
