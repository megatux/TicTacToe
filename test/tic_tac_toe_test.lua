package.path = package.path..";../app/?.lua"

require("ttt")


function should_exist_a_game_test()
  local game = TicTacToe()
  assert(game == nil)
end

function should_run_test()
  local game = instance()
  game.start()
  assert(game == nil)
end

function instance()
  return TicTacToe()
end

should_exist_a_game_test()
should_run_test()
