Square = {}

function Square:load()
    self.x = 600
    self.y = 400
    self.width = 200
    self.height = 200
end

function Square:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 590
        self.y = 390
        self.width = 220
        self.height = 220
    else
        self.x = 600
        self.y = 400
        self.width = 200
        self.height = 200
    end 
end

function Square:draw()
    local red = 67/255
    local green = 97/255
    local blue = 238/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Square:getSquare()
    return self.x, self.y, self.width, self.height
end
