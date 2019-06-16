ardour {
    ["type"]    = "EditorAction",
    name        = "Example include script",
    license     = "MIT",
    author      = "Davide Girardi",
    description = [[Example file for include]]
}


-- You MUST have a factory() function in a MixBus script
function factory()
    return function()
        -- Sub function example
        function another_function()
            LuaDialog.Message ("another_function",
            "Hello from another_function",
            LuaDialog.MessageType.Info,
            LuaDialog.ButtonType.Close):run()
        end

        -- Put your main code here
        function main_function()
            LuaDialog.Message ("main_function",
            "Hi, I'm the main function! Let's call another_function .\nShall we?",
            LuaDialog.MessageType.Question,
            LuaDialog.ButtonType.OK):run()
            another_function()
        end

        main_function()
    end
end

-- Delete this after the testing and before saving the final script
-- otherwise you will get an "Invalid or missing script-name or script-type"
-- error
factory()()
