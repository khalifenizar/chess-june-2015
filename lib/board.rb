require "pry"

class Board
  def initialize
    @board = [
      [], [], [], [],
      [], [], [], []
    ]

    @board[0][0] = "rook"
    @board[7][0] = "rook"
    @board[0][7] = "rook"
    @board[7][7] = "rook"
  end

  def valid_move?(start, endd)
    x = start[0]
    y = start[1]

    new_x = endd[0]
    new_y = endd[1]

    if self.empty?(x, y) || !self.empty?(new_x, new_y)
      return false
    else
      return true
    end
  end

  def empty?(x, y)
    if @board[x] == nil || @board[x][y] == nil
      return true
    else
      return false
    end
  end
end
