--[[local temperature =30
if temperature >25 then
    print("It's really hot outside")
elseif temperature >20 then
    print("It is warm outside")
else
    print("It is a bit chilly outside")
end]]

--[[
for i=1,10, 2 do
    print("This is repetition number: "..i)
end
for i=10,1, -1 do
    print("This is repetition number: "..i)
end
]]

--[[
local fruits={"apple","banana","cherry"}
for i=1,#fruits do
    print("I love "..fruits[i])
end]]

local counter =1
while counter<=5 do
    print("This is repitition number "..counter)
    counter=counter+1
end

for i=1, 10 do
    if i==5 then
        break
    end
    print(i)
end