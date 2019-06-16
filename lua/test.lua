ardour {
    ["type"]    = "EditorAction",
    name        = "Include LUA",
    license     = "MIT",
    author      = "Davide Girardi",
    description = [[Include another lua script]]
}

function factory()
    return function()
        -- Load the test file into testme
        test = loadfile("/path/to/development_example.lua")
        -- "Run" the file
        test()
    end
end

