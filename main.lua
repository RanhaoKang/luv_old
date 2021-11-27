function love.load()
    LUV = require "LUV"
    LUV:Init()

    require "test"
end

function love.update(dt)
    LUV:Update(dt)
end

function love.draw()
    LUV:Draw()
end
