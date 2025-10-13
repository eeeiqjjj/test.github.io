local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")


WindUI:AddTheme({
    Name = "Ringta",
    Accent = Color3.fromHex("#FFFFFF"),
    Dialog = Color3.fromHex("#FFFFFF"),
    Outline = Color3.fromHex("#FFFFFF"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#BBBBBB"),
    Background = Color3.fromHex("#101013"),
    Button = Color3.fromHex("#FFFFFF"),
    Icon = Color3.fromHex("#FFFFFF")
})

Theme = "Ringta"

WindUI:SetTheme("Ringta")

local Window = WindUI:CreateWindow({
    Title = "RINGTA",
    Icon = "rbxassetid://73030878244406",
    IconThemed = true,
    Author = "ring",
    Folder = "RING",
    Background = "rbxassetid://73030878244406",
    BackgroundTransparency = 0.03, -- almost fully solid UI background
    Size = UDim2.fromOffset(500, 350),
    Transparent = false,
    SideBarWidth = 200,
})

Window:SetBackgroundImageTransparency(0.01) -- almost fully solid image

Window:EditOpenButton({
    Title = "Open The e",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 6),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(255, 255, 255)),
    Draggable = true,
})

MainSection = Window:Section({
    Title = "Main",
    Opened = true,
})

local Tabs = {
    Home = Window:Tab({ Title = "Infinite Stamina", Icon = "footprints" }),
    AutoBlock = Window:Tab({ Title = "Auto Block", Icon = "shield" }),
    Auto_Stun = Window:Tab({ Title = "Auto Stun", Icon = "spline-pointer" }),
    AutoDays = Window:Tab({ Title = "Hitbox Expander", Icon = "target" }),
    Generator = Window:Tab({ Title = "Generator", Icon = "battery-charging" }),
    Teleport = Window:Tab({Title = "Troll All Players", Icon = "cable" }),
    AI = Window:Tab({Title = "AI", Icon = "brain-circuit" }),
    Settings = Window:Tab({Title = "Settings", Icon = "bolt" }),
    Credits = Window:Tab({ Title = "Credits", Icon = "award" })
}

Tabs.Home:Section({
    Title = "Window",
    TextXAlignment = "Left",
    TextSize = 21,
    Icon = "app-window-mac"
})

local Themes = {}

for Name, _ in pairs(WindUI:GetThemes()) do
    table.insert(Themes, Name)
end

Tabs.Home:Dropdown({
    Title = "Theme",
    Multi = false,
    AllowNone = false,
    Value = "Dark",
    Values = Themes,
    Callback = function(v)
        WindUI:SetTheme(v)
    end
})

Tabs.Home:Toggle({
    Title = "Transparency",
    Icon = "palette",
    Value = WindUI:GetTransparency(),
    Callback = function(v)
        Window:ToggleTransparency(v)
    end
})

Tabs.AutoDays:Toggle({
    Title = "Enable Godmode",
    Default = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/NEWTPTRAIN.github.io/refs/heads/main/TRAIN.LUA"))()
    end,
})

Tabs.AutoDays:Toggle({
    Title = "Enable Invisible Mode",
    Default = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/NEWTPTRAIN.github.io/refs/heads/main/TRAIN.LUA"))()
    end,
})

Tabs.AutoDays:Button({
    Title = "Auto Rescue All Kids",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))()
    end,
})

Tabs.AutoDays:Button({
    Title = "Diamond Farm Fast",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))()
    end,
})

for _, tab in pairs(Tabs) do
    if tab.SetTabColor then
        tab:SetTabColor(Color3.fromRGB(0, 0, 0)) -- solid black for max contrast
    end
end

WindUI:SetAccent(Color3.fromRGB(255,255,255)) -- pure white accent for all toggles/buttons/highlights

-- Optionally, if WindUI supports it, set all text to pure white for even more visibility:
if WindUI.SetTextColor then
    WindUI:SetTextColor(Color3.fromRGB(255,255,255))
end
