local GameObject = {}
GameObject.__index = GameObject

function GameObject.Create(name)
    local gameObject = setmetatable({}, GameObject)
    gameObject.name = name
    gameObject.components = {}

    table.insert(LUV.gameObjects, gameObject)

    return gameObject
end

function GameObject:AddComponent(cls)
    local component = cls.Create()
    self.components[cls] = component
    component.gameObject = self

    return component
end



return GameObject