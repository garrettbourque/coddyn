--w is for write mode
--a is for append mode
--r is for read mode
--[[
local file = io.open("myfile.txt","w")
file:write("now")
file:write("learning file handling")
file:close()

local file = io.open("myfile.txt","a")
file:write("now")
file:write("learning file handling")
file:close()

]]

--[[
local file = io.open("myfile.txt","r")

if file then
    local content = file:read("*line") -- read the entire file
        local content1 = file:read("*line") -- read the entire file
print(content)
print(content1)
file:close()
else
    print("File not found!")

endS


]]

--[[in order to remove a file

os.remove("myfile.txt")

]]