TicTacToe = {}

TicTacToe.x = 100
TicTacToe.y = 100

TicTacToe.width = 400
TicTacToe.height = 400

TicTacToe.line_width = TicTacToe.width / 100

function TicTacToe:board()
  self:draw_box()

  local boxw, boxh = TicTacToe:box_size()

  love.graphics.setLineWidth(self.line_width)
  -- horizontal lines
  love.graphics.line(self.x + boxw, self.y, self.x + boxw, self.y + self.height)
  love.graphics.line(
      self.x + (boxw*2) + self.line_width, self.y,
      self.x + (boxw*2) + self.line_width, self.y + self.height)
  -- vertical lines
  love.graphics.line(self.x, self.y + boxh, self.x + self.width, self.y + boxh)
  love.graphics.line(
      self.x, self.y + boxh*2 + self.line_width,
      self.x + self.width, self.y + boxh*2 + self.line_width)
end

-- x -> 1..3, y -> 1..3
function TicTacToe:cross(x,y)
  local boxw, boxh = TicTacToe:box_size()
  local crossw = boxw * .8
  local crossh = boxh * .8
  local crossx = self.x + (x-1)*boxw + (x)*self.line_width + boxw * .1
  local crossy = self.y + (y-1)*boxh + (y)*self.line_width + boxh * .1

  love.graphics.line(crossx, crossy, crossx + crossw, crossy + crossh)
  love.graphics.line(crossx + crossw, crossy, crossx, crossy + crossh)
end

-- x -> 1..3, y -> 1..3
function TicTacToe:circle(x,y)
  local boxw, boxh = TicTacToe:box_size()
  local circlex = self.x + (x-1)*boxw + boxw * .5 + (x-1)*self.line_width
  local circley = self.y + (y-1)*boxh + boxh * .5 + (y-1)*self.line_width
  local radius = (self.width / 9) + (self.width / 30)

  love.graphics.circle( "line", circlex, circley, radius, 16 )
end

function TicTacToe:draw_box()
  love.graphics.setLineWidth(1)
  love.graphics.line(self.x, self.y, self.x + self.width, self.y)
  love.graphics.line(self.x, self.y, self.x, self.y + self.height)
  love.graphics.line(self.x + self.width, self.y, self.x + self.width, self.y + self.height)
  love.graphics.line(self.x, self.y + self.height, self.x + self.width, self.y + self.height)
end

function TicTacToe:box_size()
  local w
  local h
  w = math.floor(self.width / 3) - self.line_width * 2
  h = math.floor(self.height / 3) - self.line_width * 2
  return w, h
end
