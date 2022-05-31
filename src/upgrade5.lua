Upgrade5 = {}

function Upgrade5:load()
    self.x = 1000
    self.y = 400
    self.width = 100
    self.height = 100
end

function Upgrade5:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 990
        self.y = 390
        self.width = 120
        self.height = 120
    else
        self.x = 1000
        self.y = 400
        self.width = 100
        self.height = 100
    end 
end

function Upgrade5:draw()
    local red = 166/255
    local green = 236/255
    local blue = 244/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Upgrade5:getUpgrade5()
    return self.x, self.y, self.width, self.height
end
