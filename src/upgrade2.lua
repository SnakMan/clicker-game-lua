Upgrade2 = {}

function Upgrade2:load()
    self.x = 800
    self.y = 150
    self.width = 100
    self.height = 100
end

function Upgrade2:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 790
        self.y = 140
        self.width = 120
        self.height = 120
    else
        self.x = 800
        self.y = 150
        self.width = 100
        self.height = 100
    end 
end

function Upgrade2:draw()
    local red = 195/255
    local green = 235/255
    local blue = 120/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Upgrade2:getUpgrade2()
    return self.x, self.y, self.width, self.height
end
