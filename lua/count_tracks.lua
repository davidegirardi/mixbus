ardour {
    ["type"]    = "EditorAction",
    name        = "Count Tracks",
    license     = "MIT",
    author      = "Davide Girardi",
    description = [[Count the tracks in a session]]
}

function factory () 
    return function ()
        local count = 0
        for t in Session:get_tracks():iter () do
            count = count + 1
        end
        print("Number of tracks in the session:", count)
    end
end
