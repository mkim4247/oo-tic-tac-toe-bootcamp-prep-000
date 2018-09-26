class TicTacToe 
  def initialize
    @board = board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end 

  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 4, 8],
    [2, 4, 6],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user)
    user.to_i - 1
  end

  def move(index, token = "X")
    @board[index] = token 
  end

  def position_taken?(index)
    if @board[index] == " " || @board[index] == "" || @board[index] == nil 
      return false 
    else
      return true 
    end 
  end





def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false 
    return true 
  else 
    return false 
  end
end

def turn_count(board)
  counter = 0 
  board.each do |space| 
    if space == "X" or space == "O"
      counter += 1
    end
  end 
  return counter 
end



end 