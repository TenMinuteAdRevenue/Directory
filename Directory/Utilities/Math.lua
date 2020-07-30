local math = setmetatable({}, { __index = math })

math.lerp = function(a, b, c)
    return a + (b - a) * c
end;

return math