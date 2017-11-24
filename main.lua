-- Controls any browser with basic hotkeys
function return_options()
    local entries = {};
    table.insert(entries, {name = "Open", icon = "OSwindow_500px.png"})
    table.insert(entries, {name = "Forward", icon = "Forward_500px.png"})
    table.insert(entries, {name = "Close", icon = "Close_500px.png"})
    table.insert(entries, {name = "Refresh", icon = "Refresh_500px.png"})
    table.insert(entries, {name = "Back", icon = "Back_500px.png"})
    return entries;
end

function handle(selection)
    if selection == "Open" then
        ModuleHelperSendKeyboardKey("Ctrl+T")
    elseif selection == "Forward" then
        ModuleHelperSendKeyboardKey("Alt+Right")
    elseif selection == "Close" then
        ModuleHelperSendKeyboardKey("Ctrl+W")
    elseif selection == "Refresh" then
        ModuleHelperSendKeyboardKey("F5")
    elseif selection == "Back" then
        ModuleHelperSendKeyboardKey("Alt+Left")
    else
        error("Unknown selection made")
    end
end
