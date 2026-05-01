-- Create the Toolbar
local toolbar = plugin:CreateToolbar("MyPlugin")

-- Create the Toolbar Button
local toolbarButton = toolbar:CreateButton(
	"MyPlugin", -- Plugin Button ID
	"My Plugin Tooltip!", -- Plugin Tooltip
	"rbxassetid://15523194938", -- Plugin Icon
	"My First Plugin!" -- Plugin Text
)

-- Define the Widget's behavior and size
local widgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Float, -- Widget will start floating
	false, -- Widget will be hidden initially
	false,  -- Don't override the previous enabled state
	200, -- Default width
	200, -- Default height
	150, -- Minimum width
	150 -- Minimum height
)

-- Create the Widget
local widget = plugin:CreateDockWidgetPluginGui(
	"MyPluginWidget", -- Unique ID for the widget
	widgetInfo
)
widget.Title = "My Plugin UI" -- Title displayed at the top of the widget window

-- Create the UI Button inside the Widget
local uiButton = Instance.new("TextButton")
uiButton.Size = UDim2.new(0, 150, 0, 50)
uiButton.Position = UDim2.new(0.5, 0, 0.5, 0)
uiButton.AnchorPoint = Vector2.new(0.5, 0.5)
uiButton.Text = "Click Me!"
uiButton.Parent = widget -- Parent the button to the widget so it appears inside

-- Event: Toggle the Widget when the Toolbar Button is clicked
toolbarButton.Click:Connect(function()
	widget.Enabled = not widget.Enabled
end)

-- Event: Print something when the UI Button inside the Widget is clicked
uiButton.Activated:Connect(function()
	print("The button inside the Plugin UI was successfully clicked!")
end)
