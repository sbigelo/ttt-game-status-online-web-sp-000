# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]
  
def won?(board)
  WIN_COMBINATIONS.detect do |key|
  board[key[0]] == board[key[1]] &&
  board[key[1]] == board[key[2]] &&
  position_taken?(board, key[0])
end
end

def full?(board)
  board.all?{|key| key == "X" || key == "O"}
  
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || full?(board) || (won?(board) && !full?(board))
end

def winner(board)
  if combo = won?(board)
    board[combo.first]
  end
end
  
  
