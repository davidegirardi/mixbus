ardour {
    ["type"]    = "EditorAction",
    name        = "Play from last play",
    license     = "MIT",
    author      = "Davide Girardi",
    description = [[Continue playing from the last play location]]
}

-- Move the playhead to the location of the last transport start
-- Thanks to las in the #ardour channel for figuring this out
function factory()
    return function()
        Session:request_locate(Session:last_transport_start(), true)
    end
end
