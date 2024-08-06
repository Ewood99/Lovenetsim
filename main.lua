if arg[2] == "debug" then
    require("lldebugger").start()
end






local function initialize() 
Draw = require "Draw"
GameObject = require('GameObject')

end



function love.load() 
     initialize()
    local newOBJ = GameObject:new()
    newOBJ:move(100,200)
    newOBJ:resize(100,100)

    local newOBJ2 = GameObject:new()
    newOBJ2:move(500,500)
    newOBJ2.active = true


    
end

function love.draw()
    Draw:draw()
end