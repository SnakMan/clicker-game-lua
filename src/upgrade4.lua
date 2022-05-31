Upgrade4 = {}

function Upgrade4:load()
    self.x = 100
    self.y = 400
    self.width = 100
    self.height = 100
end

function Upgrade4:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 90
        self.y = 390
        self.width = 120
        self.height = 120
    else
        self.x = 100
        self.y = 400
        self.width = 100
        self.height = 100
    end 
end

function Upgrade4:draw()
    local red = 30/255
    local green = 150/255
    local blue = 252/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Upgrade4:getUpgrade4()
    return self.x, self.y, self.width, self.height
end
