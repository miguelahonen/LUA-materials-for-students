--[[
An idea is to get familiar with lua programming language for helping the students to get an idea about basic algorithms in common programming
]]

name = "Hassu Hattupää"
bigNum = 123234234345676567 + 1
floatNum = 1.12345678912345 + 0.0000000000005 --[[ 13 digits allowed
for precise assignment ]]
longString = [[This it a text
in multible lines and
without \\n chars -> ]]
longString = longString .. name
isAbleToJump = true

io.write("Size of the string: ", #name, "\n")
io.write("Type of Big Number: ", type(bigNum), "\n")
io.write(floatNum, "\n")
io.write(longString, "\n")
io.write("5.2 % 3: ", 5.2 % 3 , "\n")
io.write("\n")
io.write("floor(2.345) : ", math.floor(2.345), "\n")
io.write("ceil(2.345) : ", math.ceil(2.345), "\n")
io.write("max(2, 3) : ", math.max(2, 3), "\n")
io.write("min(2, 3) : ", math.min(2, 3), "\n")
io.write("pow(8, 2) : ", math.pow(8, 2), "\n")
io.write("sqrt(64) : ", math.sqrt(64), "\n")

io.write("\n")
io.write("\n")
io.write("\n")

condNum = 17

if condNum < 16 then
  local allowed = true
  io.write("You should be a pupil at elementary school", "\n")
elseif (condNum >= 16) and (condNum <= 18) and (allowed ~= false) then
  io.write("Apply to the service period", "\n")
else
  io.write("Write a report for the service", "\n")
end

--[[This is very familiar but the wrong way in lua:
canVote = condNum > 18 ? "yes" : "no"
The next following is a right way to do it
]]

-- canVote = condNum > 18 and true or false
canVote = condNum > 18 and "yes" or "no"

print(string.format("Can she/he vote? %s", canVote))

quote = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

io.write("The length of Lorem Ipsum is: ", string.len(quote), "\n")
io.write("The length of Lorem Ipsum is: ", #quote, "\n")

--[[
-- Assuming we have a module printFormatter
-- Also printFormatter has a funtion simpleFormat(arg)
-- Method 1
-- require "printFormatter"
-- printFormatter.simpleFormat("test")
]]
require "mymath"
mymath.add(5, 5)

--[[
-- Method 2
local formatter = require "printFormatter"
formatter.simpleFormat("test")
]]
local mathtester = require("mymath")
mathtester.add(5, 5)

--[[
-- Method 3
require "printFormatter"
local formatterFunction = printFormatter.simpleFormat
formatterFunction("test")
]]

require("mymath")
local myMathMethod = mymath.add
myMathMethod(5, 5)

function testFn(a, b)
  print(a + b)
end

require("passingFunctions")
local mathtesterAsFunction = passingFunctionsZ.functionAsParameter
mathtesterAsFunction(testFn, 5, 5)

function plus(a, b)
     print(a + b);
end

mathBlock = {
     adder = plus
}

mathBlock.adder(5, 5)
