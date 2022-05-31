Upgrade8 = {}

function Upgrade8:load()
    self.x = 850
    self.y = 650
    self.width = 100
    self.height = 100
end

function Upgrade8:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 840
        self.y = 640
        self.width = 120
        self.height = 120
    else
        self.x = 850
        self.y = 650
        self.width = 100
        self.height = 100
    end 
end

function Upgrade8:draw()
    local red = 50/255
    local green = 14/255
    local blue = 59/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Upgrade8:getUpgrade8()
    return self.x, self.y, self.width, self.height
end
