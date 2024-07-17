local Draw  = {}
Draw.objList = {}

function Draw:draw()
for i, obj in ipairs(Draw.objList) do
    if obj.active then
    love.graphics.rectangle("fill",obj.location.x,obj.location.y,obj.dimensions.width,obj.dimensions.height)
    end
end

end


































Draw._index = Draw
return Draw