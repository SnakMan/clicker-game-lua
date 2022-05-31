Upgrade7 = {}

function Upgrade7:load()
    self.x = 300
    self.y = 600
    self.width = 100
    self.height = 100
end

function Upgrade7:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 290
        self.y = 590
        self.width = 120
        self.height = 120
    else
        self.x = 300
        self.y = 600
        self.width = 100
        self.height = 100
    end 
end

function Upgrade7:draw()
    local red = 247/255
    local green = 214/255
    local blue = 224/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Upgrade7:getUpgrade7()
    return self.x, self.y, self.width, self.height
end
