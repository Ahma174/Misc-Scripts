local uselesstable = {};
local function uselessfunction() end;

getgenv().insert = function(c, c2)
    local c3 = game:GetObjects("rbxassetid://".. c)[1];
    c3.Parent = c2;
    return c3;
end;

getgenv().insertcustomasset = function(c4, c5)
    local c6 = game:GetObjects(getcustomasset(c4))[1];
    c6.Parent = c5;
    return c6;
end;

getgenv().assetexists = function(c7)
    return isfile(c7);
end;

getgenv().getasset = function(c8)
    return game:GetObjects(getcustomasset(c8))[1];
end;

getgenv().insertmultipleassets = function(c9, c10)
    local c11 = game:GetObjects("rbxassetid://".. c9);
    
    for _, c12 in ipairs(c11) do
        c12.Parent = c10;
    end;
    
    return c11;
end;

getgenv().insertcustomassets = function(c13, c14)
    local c15 = game:GetObjects(getcustomasset(c13));
    
    for _, c16 in ipairs(c15) do
        c16.Parent = c14;
    end;
    
    return c15;
end;

getgenv().getrobloxassetsize = function(c17)
    return #game:GetObjects("rbxassetid://".. c17);
end;
