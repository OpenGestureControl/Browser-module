-- Copyright (c) 2017 ICT Group

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

-- Browser module for OpenGestureControl
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
