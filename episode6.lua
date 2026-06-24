
--[[
local fruits = {"apple", "banana", "cherry"}

--again indexing starts at 1 not 0
print(fruits[1])
table.insert(fruits,"Orange")
print(fruits[4])
table.remove(fruits)
print(fruits[4])
table.remove(fruits,2)
print(fruits[2])

]]


--[[
local player ={
    name= "Alex",
    score = 1200,
    level = 5
}

print("Player name: "..player.name)
print("Score: "..player.score)
print("Score: "..player["score"])

player.score = player.score +  100 --increase teh score
player.lives = 3 -- Adds a new key-value pair
print(player.score)
print(player.lives)
]]

--[[
local colors = {"Red", "Green", "Blue"}

for index, value in ipairs(colors) do
    print("Color ".. index .. ": ".. value )
end


local player ={
    name= "Alex",
    score = 1200,
    level = 5
}
--this method does not guarantee the order things are print where as in ipairs it is in order
for key,value in pairs(player) do
    print(key ..": " ..value)
end
]]
--[[
local game={
    title = "Super Lua World",
    stats= {
        score =3000,
        lives=3
    }
}

print(game.title)
print(game.stats.score)

]]

--MetaTables: Tables that can add behavior to other Tables
local car = {speed=60}
print(car.speed)--60
print(car.maxSpeed) --nil

local metatable = {
    __index = function(table,key)
        if key =="maxSpeed" then
            return 200

        end
    end
}
setmetatable(car,metatable)

print(car.speed)--60
print(car.maxSpeed) --nil