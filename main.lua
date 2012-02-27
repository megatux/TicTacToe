package.path = package.path..";./tictactoe/app/?.lua"

require("ttt")

function love.load(args)
  game = TicTacToe
end

function love.update(dt)

end

function love.draw()
  game.draw()
  game.circle(1,1)
  game.crux(1,1)
end
