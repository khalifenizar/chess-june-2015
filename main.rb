require_relative("lib/board.rb")

board = Board.new
moves = [
  # invalid starting position moves
  { :start => [ 2, 4 ], :end => [ 7, 7 ], :expected => false },
  { :start => [ 6, 5 ], :end => [ 7, 7 ], :expected => false },

  # piece at destination
  { :start => [ 7, 7 ], :end => [ 0, 7 ], :expected => false },
  { :start => [ 7, 7 ], :end => [ 7, 0 ], :expected => false },

  # valid rook moves
  { :start => [ 0, 0 ], :end => [ 0, 4 ], :expected => true },
  { :start => [ 7, 7 ], :end => [ 7, 3 ], :expected => true },
]

moves.each do |move|
  result = board.valid_move?(move[:start], move[:end])
  if result == move[:expected]
    conclusion = "OK"
  else
    conclusion = "WTF"
  end
  puts "#{conclusion}: #{move[:start]} --> #{move[:end]} = #{result}"
end

# a1 => 0, 0
# h1 => 7, 0
# a8 => 0, 7
# h8 => 7, 7

# a b c d e f g h
# 0 1 2 3 4 5 6 7

# 1 2 3 4 5 6 7 8
# 0 1 2 3 4 5 6 7
