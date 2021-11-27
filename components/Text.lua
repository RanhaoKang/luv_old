local Text = {}
Text.__index = Text

function Text.Create()
    return setmetatable({}, Text)
end


return Text