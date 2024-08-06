

local GameObject = {}

local function setDefaults(o)
o.active = true
o.location = {x= 0, y=0}
o.dimensions = {width = 10, height = 10}
return o;

end

function GameObject:new(o) 

o = o or {}
o = setDefaults(o)

setmetatable(o,{__index = GameObject})
table.insert(Draw.objList,o)


return o;
end

function GameObject:move(x,y)

self.location.x = x
self.location.y = y
end

function GameObject:resize(width,height)
    self.dimensions.width = width
    self.dimensions.height = height
end


GameObject.__index = GameObject
return GameObject