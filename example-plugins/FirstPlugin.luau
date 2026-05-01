-- Create the Toolbar
local toolbar = plugin:CreateToolbar("MyPlugin")

-- Create the Button
local button = toolbar:CreateButton("MyPlugin",
-- Plugin ID
	"My Plugin Tooltip!",
-- Plugin Tooltip
	"rbxassetid://15523194938",
-- Plugin Icon
	"My First Plugin!"
-- Plugin Text
)

-- Click event
button.Click:Connect(function()
	print("The button was clicked!")
end)