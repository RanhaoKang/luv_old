local LUV = {}

LUV.GameObject = require "GameObject"
LUV.Transform = require "components.Transform"
LUV.Text = require "components.Text"
LUV.Text.type = "Text"

function LUV:Init()
    self.gameObjects = {}
end

function LUV:Update(dt)
    self:_UpdateEditor(dt)
    self:_UpdateGame(dt)
end

function LUV:_UpdateEditor()
end

function LUV:_UpdateGame()
    for _, gameObject in ipairs(self.gameObjects) do
        for cls, component in pairs(gameObject.components) do
            if component.Update then
                component:Update()
            end
        end
    end
end

function LUV:Draw()
    for i, gameObject in ipairs(self.gameObjects) do
        local renderer = gameObject.components[LUV.Text]
        if renderer then
            love.graphics.print(string.format("%s %s", gameObject.name, renderer.text), 0, i * 5)
        end
    end
end

return LUV