-- Use here local (local mymath = {}) keyword only if you do not want to implement methods in this way:
-- require "mymath"
-- mymath.add(5, 5)

mymath = {}

function mymath.add(a, b)
  print(a + b)
end

function mymath.sub(a, b)
  print(a - b)
end

function mymath.mul(a, b)
  print(a * b)
end

function mymath.div(a, b)
  print(a / b)
end

function mymath.modulo(a, b)
  print(a % b)
end

return mymath
