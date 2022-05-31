require 'src/square'
require 'src/upgrade'
require 'src/upgrade2'
require 'src/upgrade3'
require 'src/upgrade4'
require 'src/upgrade5'
require 'src/upgrade6'
require 'src/upgrade7'
require 'src/upgrade8'

function love.load()
    Square:load()
    Upgrade:load()
    Upgrade2:load()
    Upgrade3:load()
    Upgrade4:load()
    Upgrade5:load()
    Upgrade6:load()
    Upgrade7:load()
    Upgrade8:load()

    sqrx, sqry, sqrwidth, sqrheight = Square:getSquare()
    upgx, upgy, upgwidth, upgheight = Upgrade:getUpgrade()
    upg2x, upg2y, upg2width, upg2height = Upgrade2:getUpgrade2()
    upg3x, upg3y, upg3width, upg3height = Upgrade3:getUpgrade3()
    upg4x, upg4y, upg4width, upg4height = Upgrade4:getUpgrade4()
    upg5x, upg5y, upg5width, upg5height = Upgrade5:getUpgrade5()
    upg6x, upg6y, upg6width, upg6height = Upgrade6:getUpgrade6()
    upg7x, upg7y, upg7width, upg7height = Upgrade7:getUpgrade7()
    upg8x, upg8y, upg8width, upg8height = Upgrade8:getUpgrade8()

    money = 0
    upgrade = 0
    upgrade2 = 0
    upgrade3 = 0
    upgrade4 = 0
    upgrade5 = 0
    upgrade6 = 0
    upgrade7 = 0
    upgrade8 = 0
end

function love.update(dt)
    Square:update(dt)
    Upgrade:update(dt)
    Upgrade2:update(dt)
    Upgrade3:update(dt)
    Upgrade4:update(dt)
    Upgrade5:update(dt)
    Upgrade6:update(dt)
    Upgrade7:update(dt)
    Upgrade8:update(dt)

    if upgrade2 > 0 then
        money = money + upgrade2 * 10 * dt
    end

    if upgrade3 > 0 then
        money = money + upgrade3 * 100 * dt
    end

    if upgrade4 > 0 then
        money = money + upgrade4 * 1000 * dt
    end

    if upgrade5 > 0 then
        money = money + upgrade5 * 10000 * dt
    end

    if upgrade6 > 0 then
        money = money + upgrade6 * 100000 * dt
    end

    if upgrade7 > 0 then
        money = money + upgrade7 * 1000000 * dt
    end

    if upgrade8 > 0 then
        money = money + upgrade8 * 1000000000 * dt
    end

    money2 = math.ceil(money)
end

function love.draw()
    love.graphics.setBackgroundColor(1, 1, 1)

    Square:draw()
    Upgrade:draw()
    Upgrade2:draw()
    Upgrade3:draw()
    Upgrade4:draw()
    Upgrade5:draw()
    Upgrade6:draw()
    Upgrade7:draw()
    Upgrade8:draw()

    local font = love.graphics.newFont(50)
    local font2 = love.graphics.newFont(24)

    love.graphics.setColor(1, 0, 0)

    love.graphics.print("$", font, 20, 47)
    love.graphics.print(money2, font, 50, 50)

    love.graphics.print("Cost: $100", font2, 1190, 260)
    love.graphics.print(upgrade, font2, 1230, 110)

    love.graphics.print("Cost: $1000", font2, 780, 260)
    love.graphics.print(upgrade2, font2, 830, 110)

    love.graphics.print("Cost: $10000", font2, 370, 260)
    love.graphics.print(upgrade3, font2, 430, 110)

    love.graphics.print("Cost: $100000", font2, 60, 510)
    love.graphics.print(upgrade4, font2, 130, 360)

    love.graphics.print("Cost: $1000000", font2, 950, 510)
    love.graphics.print(upgrade5, font2, 1030, 360)

    love.graphics.print("Cost: $10000000", font2, 1190, 710)
    love.graphics.print(upgrade6, font2, 1280, 560)

    love.graphics.print("Cost: $100000000", font2, 230, 710)
    love.graphics.print(upgrade7, font2, 330, 560)

    love.graphics.print("Cost: $1000000000", font2, 770, 760)
    love.graphics.print(upgrade8, font2, 880, 610)
end

function love.mousepressed(x, y, button, istouch)
    if x > sqrx and x < sqrx + sqrwidth and y > sqry and y < sqry + sqrheight then
        if button == 1 then
            money = money + upgrade + 1
        end
    end

    if x > upgx and x < upgx + upgwidth and y > upgy and y < upgy + upgheight then
        if button == 1 then
            if(money >= 100) then
                upgrade = upgrade + 1
                money = money - 100
            end
        end
    end

    if x > upg2x and x < upg2x + upg2width and y > upg2y and y < upg2y + upg2height then
        if button == 1 then
            if(money >= 1000) then
                upgrade2 = upgrade2 + 1
                money = money - 1000
            end
        end
    end

    if x > upg3x and x < upg3x + upg3width and y > upg3y and y < upg3y + upg3height then
        if button == 1 then
            if(money >= 10000) then
                upgrade3 = upgrade3 + 1
                money = money - 10000
            end
        end
    end

    if x > upg4x and x < upg4x + upg4width and y > upg4y and y < upg4y + upg4height then
        if button == 1 then
            if(money >= 100000) then
                upgrade4 = upgrade4 + 1
                money = money - 100000
            end
        end
    end

    if x > upg5x and x < upg5x + upg5width and y > upg5y and y < upg5y + upg5height then
        if button == 1 then
            if(money >= 1000000) then
                upgrade5 = upgrade5 + 1
                money = money - 1000000
            end
        end
    end

    if x > upg6x and x < upg6x + upg6width and y > upg6y and y < upg6y + upg6height then
        if button == 1 then
            if(money >= 10000000) then
                upgrade6 = upgrade6 + 1
                money = money - 10000000
            end
        end
    end

    if x > upg7x and x < upg7x + upg7width and y > upg7y and y < upg7y + upg7height then
        if button == 1 then
            if(money >= 100000000) then
                upgrade7 = upgrade7 + 1
                money = money - 100000000
            end
        end
    end

    if x > upg8x and x < upg8x + upg8width and y > upg8y and y < upg8y + upg8height then
        if button == 1 then
            if(money >= 1000000000) then
                upgrade8 = upgrade8 + 1
                money = money - 1000000000
            end
        end
    end
end
