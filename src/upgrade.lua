Upgrade = {}

function Upgrade:load()
    self.x = 1200
    self.y = 150
    self.width = 100
    self.height = 100
end

function Upgrade:update(dt)
    if love.mouse.getX() > self.x and love.mouse.getX() < self.x + self.width and love.mouse.getY() > self.y and love.mouse.getY() < self.y + self.height then
        self.x = 1190
        self.y = 140
        self.width = 120
        self.height = 120
    else
        self.x = 1200
        self.y = 150
        self.width = 100
        self.height = 100
    end 
end

function Upgrade:draw()
    local red = 241/255
    local green = 34/255
    local blue = 70/255

    love.graphics.setColor(red, green, blue)

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Upgrade:getUpgrade()
    return self.x, self.y, self.width, self.height
end
