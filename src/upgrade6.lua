Upgrade6 = {}

function Upgrade6:load()
    self.x = 1250
    self.y = 600
    self.width = 100
    self.height = 100
end

function Upgrade6:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 1240
        self.y = 590
        self.width = 120
        self.height = 120
    else
        self.x = 1250
        self.y = 600
        self.width = 100
        self.height = 100
    end 
end

function Upgrade6:draw()
    local red = 255/255
    local green = 127/255
    local blue = 17/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Upgrade6:getUpgrade6()
    return self.x, self.y, self.width, self.height
end
