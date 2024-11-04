local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/Sigmna/refs/heads/main/Souce.lua"))()
local Window = redzlib:MakeWindow({"Spider Team", "", ""})
Window:AddMinimizeButton({
  Button = { Image = redzlib:GetIcon("Apple"), BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local Main = Window:MakeTab({"Main", "Database"})
local Character = Window:MakeTab({"Character", "User"})
local Car = Window:MakeTab({"Car", "Rocket"})
local RP = Window:MakeTab({'RP/Names' , 'clover'})
local Combat = Window:MakeTab({'Combat' , 'Sword'})
    --rbxassetid://10734887784 = menu = три точки
    --rbxassetid://10709818996 = data base
    -- Window:SelectTab(Tab2)
local Charactersection = Character:AddSection({"Character"})
local RPSection = RP:AddSection({'RP/Names'})


local RPBioname = RP:AddTextBox({
    Name = "Name",
    Description = "Type RPBioname",
    PlaceholderText = "",
    Callback = function(RPBioname)
    game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName",RPBioname)
end})

local resetrpbioname = RP:AddButton({'Reset RPBioname' , function ()
    game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName","")
end})


local RPBioInfo = RP:AddTextBox({
    Name = 'Info',
    Description = 'Type RPBioInfo',
    PlaceholderText = '',
    Callback = function (RPBioInfo)
    game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayBio",RPBioInfo)
end})

local resetrbbioinfo = RP:AddButton({'Reset RPBioInfo' , function ()
    game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayBio",'')
end})
local stop = false
local RainbowRPBioname = RP:AddToggle({
    Name = 'Rainbow Name',
    Description = '',
    Flag = 'Rainbowtoggle',
    Default = false,
    Callback = function (RainbowRPBionametoggletrue)
      if stop == true then
        stop = false
      end
        stop = true
        while task.wait(1) do
            if  stop == true then
            game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(255, 0, 0))
            task.wait(0.8)
            game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(0, 85, 255))
            task.wait(0.8)
            game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(255, 0, 255))
            task.wait(0.8)
            game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(0, 170, 0))
            task.wait(0.8)
            game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(255, 255, 255))
            task.wait(0.8)
            game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(0 , 0, 0))
            task.wait(0.8)
            game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(0, 255, 0))
            task.wait(0.8)
            game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(170, 85, 0))

            elseif stop == false then
                game:GetService("ReplicatedStorage").RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor",Color3.new(255 , 255 , 255))
            end
        end
    end})
