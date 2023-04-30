local Api = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenijo/TripHub-api/main/TripHubApiMain.lua"))() -- Loads the TripHub API from a GitHub repository

local Window = Api.Library.CreateLib("My Window", "Sentinel") -- Creates a new GUI window using the Sentinel theme

local Tab = Window:NewTab("TabName") -- Adds a new tab to the window

local Section = Tab:NewSection("My Section") -- Adds a new section to the tab

local Button = Section:NewButton("My Button", "This is a button", function(callback) -- Adds a new button to the section with a specified label and description
if callback then
Api.Players.LocalPlayer.Character.Humanoid.Health = 0 -- Sets the player's health to 0 when the button is clicked
print("Dead")
end
end)

Section:NewToggle("ToggleText", "ToggleInfo", function(state) -- Adds a new toggle switch to the section with a specified label and description
if state then
print("Toggle On") -- Prints a message when the toggle switch is turned on
else
print("Toggle Off") -- Prints a message when the toggle switch is turned off
end
end)

Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- Adds a new slider to the section with a specified label and description, a maximum value of 500, and a minimum value of 0
print(s) -- Prints the slider's value when it is changed
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s -- Sets the player's walkspeed to the slider's value
end)

Section:NewTextBox("TextboxText", "TextboxInfo", function(txt) -- Adds a new text box to the section with a specified label and description
print(txt) -- Prints the text entered in the text box
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function() -- Adds a new keybind to the section with a specified label and description and a keybind of the F key
print("You just clicked the bind") -- Prints a message when the keybind is triggered
end)

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption) -- Adds a new dropdown to the section with a specified label, description, and options
print(currentOption) -- Prints the selected option from the dropdown
end)
