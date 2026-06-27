--[[function sayHello(name, desc)
print("Hello "..desc..name)
end

sayHello("Sam","little") --calling function
]]
--[[
function add(a,b)
    return a+b
end

local sum = add(5,3)
print(sum)
]]

--[[
--can return multiple values witha function
function getMinAndMax(a,b)
    if a>b then
        return b,a
    else return a,b
    end

end
local min,max = getMinAndMax(10,20)
print("Min: ".. min .. " Max: "..max)


local sayHi = function(name)
    print("Hi, ".. name .."!")
end
sayHi("Charlie")

]]


--Recursive problems
function Ffactorial(n)

    if n==0 then
        return 1
    else return n*Ffactorial(n-1)
    end
end

print(Ffactorial(9))