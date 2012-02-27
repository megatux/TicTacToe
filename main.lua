package.path = package.path..";./tictactoe/app/?.lua"

require("ttt")

function love.load(args)

end

function love.update(dt)

end

function love.draw()
  TicTacToe:draw()
  TicTacToe:circle(1,1)
  TicTacToe:crux(1,1)
end
