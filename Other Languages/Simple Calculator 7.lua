local symb
local fir
local sec

print("Symbol?")
symb = io.read()

print("First Number?")
fir = tonumber(io.read())

print("Second Number?")
sec = tonumber(io.read())

if symb == '+' then
print("Results:", fir + sec, ";)")
  
elseif symb == '-' then
print("Results:", fir - sec, ";)")
  
elseif symb == '*' then
print("Results:", fir * sec, ";)")
  
elseif symb == '/' then
print("Results:", fir / sec, ";)")
else
  print("Invalid Symbol")
end
