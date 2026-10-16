-- Some Tables Are Useless Like Dependencies and Misc
return {
    Colors = {
        ["Unique"] = Color3.fromRGB(255, 170, 0),
        ["Epic"] = Color3.fromRGB(170, 85, 255),
        ["Rare"] = Color3.fromRGB(0, 170, 255),
        ["Advanced"] = Color3.fromRGB(0, 255, 0),
        ["Basic"] = Color3.fromRGB(181, 181, 181)
    };
    Strokes = {
        ["Unique"] = Color3.fromRGB(0, 0, 0),
        ["Epic"] = Color3.fromRGB(0, 0, 0),
        ["Rare"] = Color3.fromRGB(0, 0, 0),
        ["Advanced"] = Color3.fromRGB(0, 0, 0),
        ["Basic"] = Color3.fromRGB(0, 0, 0)
    };
    TextColors = {
        ["Unique"] = Color3.fromRGB(255, 255, 255),
        ["Epic"] = Color3.fromRGB(255, 255, 255),
        ["Rare"] = Color3.fromRGB(255, 255, 255),
        ["Advanced"] = Color3.fromRGB(255, 255, 255),
        ["Basic"] = Color3.fromRGB(255, 255, 255)
    };
    Evolutions = {
        ["Evolved"] = Color3.fromRGB(170, 85, 255)
    };
    EvolutionStrokes = {};
    Misc = {
        ["EvolutionsShowedInGame"] = false,
        ["LabelInstances"] = "TextLabel"
    };
    Dependencies = {
        ["petGui"] = "petGui",
        ["petGuiInstanceType"] = "BillboardGui",
        ["petGuiHierarchy"] = {
            ["evolvedLabel"] = {
                ["Type"] = "TextLabel",
                ["Visible"] = false,
                ["TextColor"] = Color3.fromRGB(255, 255, 255),
                ["TextStrokeColor"] = Color3.fromRGB(0, 0, 0)
            };
            ["levelLabel"] = {
                ["Type"] = "TextLabel",
                ["Visible"] = false,
                ["TextColor"] = Color3.fromRGB(255, 255, 255),
                ["TextStrokeColor"] = Color3.fromRGB(0, 0, 0)
            };
            ["nameLabel"] = {
                ["Type"] = "TextLabel",
                ["Visible"] = false,
                ["TextColor"] = Color3.fromRGB(255, 255, 255),
                ["TextStrokeColor"] = Color3.fromRGB(0, 0, 0)
            };
        };
    };
};
