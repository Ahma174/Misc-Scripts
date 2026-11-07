local c = getgenv();

c.createobj = function(c2, c3)
    local c4 = Instance.new(c2);
    c4.Parent = c3;
    return c4;
end;

c.destroyobj = function(c5)
   return c5:Destroy(); 
end;

c.cloneobj = function(c6, c7)
    local c8 = c6:Clone();
    c8.Parent = c7;
    return c8;
end;

c.clearinstance = function(c9)
    return c9:ClearAllChildren();
end;

c.gethierarchyof = function(c10)
    return c10:GetDescendants();
end;

c.findobj = function(c11, c12)
    return c11:FindFirstChild(c12);
end;

c.getchildrenof = function(c13)
    return c13:GetChildren();
end;

c.findclasson = function(c14, c15)
    return c14:FindFirstChildOfClass(c15);
end;

c.getancestorofclass = function(c16, c17)
    return c16:FindFirstAncestorOfClass(c17);
end;

c.getancestorbyname = function(c18, c19)
    return c18:FindFirstAncestor(c19);
end;

c.isdescendant = function(c20, c21)
    return c20:IsDescendantOf(c21);
end;

c.classexists = function(c22, c23)
    return c22:IsA(c23);
end;

c.getpathof = function(c24)
    return c24:GetFullName();
end;

c.findrecursiveobj = function(c25, c26)
    return c25:FindFirstChild(c26, true);
end;

c.findrecursiveobjofclass = function(c27, c28)
    for _, c29 in ipairs(c27:GetDescendants()) do
        if c29:IsA(c28) then
            return c29;
        end;
    end;
end;
