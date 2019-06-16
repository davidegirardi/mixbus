ardour {
    ["type"]    = "EditorAction",
    name        = "Example include script",
    license     = "MIT",
    author      = "Davide Girardi",
    description = [[Example file for include]]
}


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
    print("")
    another_function()
end

-- You MUST have a factory() function in a MixBus script
function factory()
    return main_function
end

-- Delete this after the testing and before saving the final script
factory()()
