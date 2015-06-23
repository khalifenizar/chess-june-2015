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

    if @board[x][y] == nil
      return false
    else
      return true
    end
  end
end
