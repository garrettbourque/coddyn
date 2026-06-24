--[[local num1 =10
local num2 =5
print (num1+num2)
print (num1-num2)
print (num1/num2)
print (num1*num2)
print (num1%num2)
print (num1^num2)
]]
--[[
local player1Score = 150
local player2Score = 200

print(player1Score == player2Score)
print(player1Score < player2Score)
print(player1Score > player2Score)]]

local playerLevel=5
local playerHealth=50

if playerLevel>3 and playerHealth>30 then
    print("You are eligible for a bonus!")
    print("Bonus unlocked!")
else
    print("You need more health or level")
end

print(playerLevel)
playerLevel=8
print(playerLevel)