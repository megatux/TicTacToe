package.path = package.path..";./tictactoe/app/?.lua"

require("ttt")

function love.load(args)

end

function love.update(dt)

end

function love.draw()
  TicTacToe:board()

  TicTacToe:circle(3,1)
  TicTacToe:circle(2,2)
  TicTacToe:circle(1,3)

  TicTacToe:cross(1,1)
  TicTacToe:cross(2,2)
  TicTacToe:cross(3,3)
end
