-- Run this from the Window > Scripting window
-- It will run the code in my_file

function factory()
    return function()
        my_file = "/path/to/development_example.lua"
        -- Load the test file into testme
        test = loadfile(my_file)
        -- "Run" the file
        test()
    end
end

