-- -- ZYRSMA HUB - CORPS SAINTS

local zones = {
    "Swamp",
    "Anthill Island",
    "Red Corner Tower",
    "Pit of Doom",
    "Ridge B. County Mine",
    "Ridge B. County Cave",
    "Plains",
    "Death Valley"
}

local gui = Instance.new("ScreenGui")
gui.Name = "ZYRSMA_HUB"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 330)
frame.Position = UDim2.new(0.5, -130, 0.5, -165)
frame.BackgroundColor3 = Color3.fromRGB(25, 10, 40)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "ZYRSMA HUB | CORPS SAINTS"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundColor3 = Color3.fromRGB(100, 0, 180)
title.Parent = frame

for i, zone in ipairs(zones) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.9, 0, 0, 28)
    button.Position = UDim2.new(0.05, 0, 0, 45 + (i-1)*34)
    button.Text = "[ ] " .. zone
    button.BackgroundColor3 = Color3.fromRGB(60, 30, 80)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Parent = frame

    button.MouseButton1Click:Connect(function()
        if button.Text:sub(1, 3) == "[ ]" then
            button.Text = "[X] " .. zone
        else
            button.Text = "[ ] " .. zone
        end
    end)
end

gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
