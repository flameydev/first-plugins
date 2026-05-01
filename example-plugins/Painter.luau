local toolbar = plugin:CreateToolbar("Painter")

local button = toolbar:CreateButton(
	"PainterPlugin", 
	"Paints all selected parts Red", 
	"rbxassetid://17368490346", 
	"Painter Plugin"
)

local Selection = game:GetService("Selection")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

button.Click:Connect(function()
	ChangeHistoryService:SetWaypoint("Paint") -- Set the waypoint before doing anything
	
	local selected = Selection:Get() -- Get the currently selected instances
	
	for i, part in ipairs(selected) do -- Loop through all the selected instances
		if part:IsA("BasePart") then
			part.Color = Color3.new(1, 0, 0) -- If part is actually a BasePart, change its colour to Red
		end
	end
	
	ChangeHistoryService:SetWaypoint("Paint") -- Set Waypoint again
end)