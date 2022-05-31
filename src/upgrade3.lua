Upgrade3 = {}

function Upgrade3:load()
    self.x = 400
    self.y = 150
    self.width = 100
    self.height = 100
end

function Upgrade3:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 390
        self.y = 140
        self.width = 120
        self.height = 120
    else
        self.x = 400
        self.y = 150
        self.width = 100
        self.height = 100
    end 
end

function Upgrade3:draw()
    local red = 255/255
    local green = 201/255
    local blue = 185/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Upgrade3:getUpgrade3()
    return self.x, self.y, self.width, self.height
end
