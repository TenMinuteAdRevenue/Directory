local table = setmetatable({}, { __index = table })

table.merge = function(...)
    local new = {}

    for _, object in pairs({ ... }) do
        for index, value in pairs(object) do
            new[index] = value
        end
    end

    return new
end;

return table;