TicTacToe = {}

TicTacToe.width = 400
TicTacToe.height = 400
TicTacToe.line_width = 4
TicTacToe.x = 100
TicTacToe.y = 100

function TicTacToe:draw()
  local real_width  = self.width  - (self.line_width * 2)
  local real_height = self.height - (self.line_width * 2)

  local l1x = math.floor(real_width/3)
  local l1y = math.floor(real_height/3)

  love.graphics.setLineWidth(self.line_width)
  -- horizontal lines
  love.graphics.line(self.x + l1x, self.y, self.x + l1x, self.y + l1y*3)
  love.graphics.line(self.x + l1x*2, self.y, self.x + l1x*2, self.y + l1y*3)
  -- vertical lines
  love.graphics.line(self.x, self.y + l1y, self.x + l1x*3, self.y + l1y)
  love.graphics.line(self.x, self.y + l1y*2, self.x + l1x*3, self.y + l1y*2)
end

function TicTacToe:crux(x,y)
  local real_x = 100
  local real_y = 100
  local real_width = 70
  local real_height = 70

  love.graphics.line(real_x, real_y, real_x + real_width, real_y + real_height)
  love.graphics.line(real_x + real_width, real_y, real_x, real_y + real_height)
end

function TicTacToe:circle(x,y)
  local real_x = 180
  local real_y = 320
  local radius = 35

  love.graphics.circle( "line", real_x, real_y, radius, 16 )
end