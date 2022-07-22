local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Xtrey10x Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})




local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Auto Farming"
})

local Tab3 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Tab4 = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Tab2 = Window:MakeTab({
	Name = "Bosses",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab2:AddSection({
	Name = "Bosses"
})



--value
_G.ThunderBoss = true
_G.Flowers = true
_G.Muzan = true
_G.InsectBoss = true
_G.WaterBoss = true
_G.WindBoss = true
_G.Autocivilians = true
_G.AutoHit = true
_G.Demon = true
_G.BlackSmith = true
_G.Nezuko = true
_G.Zen = true
_G.PunchingLogs = true

-- functions



function PunchingLogs()
    while _G.PunchingLogs == true do
        -- // Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Mob = game:GetService("Workspace").punchinglogs.Log
local LinearTween = TweenInfo.new(15, Enum.EasingStyle.Linear)

-- // Workout where to tp to
local _, CharacterSize = Character:GetBoundingBox()
local HeightOffset = CharacterSize.Y / 2
local Position, MobSize = Mob:GetBoundingBox()
Position = Position + Vector3.new(0, MobSize.Y + HeightOffset, 0)

-- // Tween
local Tween = TweenService:Create(Character.PrimaryPart, LinearTween, {
    CFrame = Position
})
Tween:Play()
wait()
    end
    
end


function TpNezukoBoss()
            -- // Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Mob = game:GetService("ReplicatedStorage").Npcs.Nezuko
local LinearTween = TweenInfo.new(15, Enum.EasingStyle.Linear)

-- // Workout where to tp to
local _, CharacterSize = Character:GetBoundingBox()
local HeightOffset = CharacterSize.Y / 2
local Position, MobSize = Mob:GetBoundingBox()
Position = Position + Vector3.new(0, MobSize.Y + HeightOffset, 0)

-- // Tween
local Tween = TweenService:Create(Character.PrimaryPart, LinearTween, {
    CFrame = Position
})
Tween:Play()
wait()
    end


function TpWindBoss()
        -- // Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Mob = game:GetService("Workspace").Jinger
local LinearTween = TweenInfo.new(15, Enum.EasingStyle.Linear)

-- // Workout where to tp to
local _, CharacterSize = Character:GetBoundingBox()
local HeightOffset = CharacterSize.Y / 2
local Position, MobSize = Mob:GetBoundingBox()
Position = Position + Vector3.new(0, MobSize.Y + HeightOffset, 0)

-- // Tween
local Tween = TweenService:Create(Character.PrimaryPart, LinearTween, {
    CFrame = Position
})
Tween:Play()
    end

    function TpWaterBoss()
        -- // Services
     local Players = game:GetService("Players")
     local TweenService = game:GetService("TweenService")
     
     -- // Vars
     local LocalPlayer = Players.LocalPlayer
     local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
     local Mob = game:GetService("Workspace").Map.Chunk23.BigTree1
     local LinearTween = TweenInfo.new(15, Enum.EasingStyle.Linear)
     
     -- // Workout where to tp to
     local _, CharacterSize = Character:GetBoundingBox()
     local HeightOffset = CharacterSize.Y / 2
     local Position, MobSize = Mob:GetBoundingBox()
     Position = Position + Vector3.new(0, MobSize.Y + HeightOffset, 0)
     
     -- // Tween
     local Tween = TweenService:Create(Character.PrimaryPart, LinearTween, {
         CFrame = Position
     })
     Tween:Play()
     wait()
         end

function TpThunderBoss()
            -- // Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Mob = game:GetService("Workspace")["Jigoro Kuwajima"]
local LinearTween = TweenInfo.new(15, Enum.EasingStyle.Linear)

-- // Workout where to tp to
local _, CharacterSize = Character:GetBoundingBox()
local HeightOffset = CharacterSize.Y / 2
local Position, MobSize = Mob:GetBoundingBox()
Position = Position + Vector3.new(0, MobSize.Y + HeightOffset, 0)

-- // Tween
local Tween = TweenService:Create(Character.PrimaryPart, LinearTween, {
    CFrame = Position
})
Tween:Play()
wait()
    end


function TpInsectBoss()
        -- // Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Mob = game:GetService("Workspace").Shinobu
local LinearTween = TweenInfo.new(15, Enum.EasingStyle.Linear)

-- // Workout where to tp to
local _, CharacterSize = Character:GetBoundingBox()
local HeightOffset = CharacterSize.Y / 2
local Position, MobSize = Mob:GetBoundingBox()
Position = Position + Vector3.new(0, MobSize.Y + HeightOffset, 0)

-- // Tween
local Tween = TweenService:Create(Character.PrimaryPart, LinearTween, {
    CFrame = Position
})
Tween:Play()
wait()
    end


function Nezuko()
    while _G.Nezuko == true do
        local Time = 0
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("ReplicatedStorage").Npcs.Nezuko.HumanoidRootPart.CFrame})
tween:Play()                     tween.Completed:Wait(E)
end
    end







function BlackSmith()
    while _G.BlackSmith == true do
        -- // Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Mob = game:GetService("Workspace")["Black Smith"].Pants13
local LinearTween = TweenInfo.new(15, Enum.EasingStyle.Linear)

-- // Workout where to tp to
local _, CharacterSize = Character:GetBoundingBox()
local HeightOffset = CharacterSize.Y / 2
local Position, MobSize = Mob:GetBoundingBox()
Position = Position + Vector3.new(0, MobSize.Y + HeightOffset, 0)

-- // Tween
local Tween = TweenService:Create(Character.PrimaryPart, LinearTween, {
    CFrame = Position
})
Tween:Play()
wait()
    end
end







function AutoHit()
    while _G.AutoHit == true do
        local args = {
            [1] = "fist_combat",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = game:GetService("Players").LocalPlayer.Character,
            [4] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            [5] = game:GetService("Players").LocalPlayer.Character.Humanoid,
            [6] = 919,}
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
        wait(1.30)
        
            end

end
function Autocivilians()
    while _G.Autocivilians == true do
        local Time = 0
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").Mobs.Civilians.Kiribating["Civilian_3"].Civilian.HumanoidRootPart.CFrame})
        tween:Play()                     tween.Completed:Wait(E)
        end
end




 function Insect()
    while _G.InsectBoss == true do
        local Time = 0
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").Mobs.Bosses["Insect_Trainee"].Ouwbae.Shiron.HumanoidRootPart.CFrame})
        tween:Play()                     tween.Completed:Wait(E)
        end
end

function ThunderBoss()
while _G.ThunderBoss == true do
local Time = 0
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").Mobs.Bosses.ThunderTrainee.Zanegutsu["Zanegutsu Kuuchie"].HumanoidRootPart.CFrame})
tween:Play()                     tween.Completed:Wait(E)
end
end

function Demon()
while _G.Demon == true do
local Time = 0
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").Mobs.Demons["Cave_2"]["Demon_3"]["Yowai Demon"].HumanoidRootPart.CFrame})
tween:Play()                     tween.Completed:Wait(E)
end
end

function AntiAfk()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
           vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
           wait(1)
           vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
        
    end
    

function Wagons12()
shared.Wagon = {
    Enabled = true,
    Speed = 35, -- Undetected speed as for now, recommend lower.
    Wait = 3, -- Wait time when tween is completed.
}

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

local PlayerGui = LocalPlayer.PlayerGui
local Npc_Dialogue = PlayerGui.Npc_Dialogue

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local To_Server = ReplicatedStorage.Remotes.To_Server
local Player_Data = ReplicatedStorage.Player_Data[LocalPlayer.Name]

local function Magnitude(object)
    return (Character.HumanoidRootPart.Position - object.Position).Magnitude
end

local function Tween(object, properties)
    local TweenService = game:GetService("TweenService")
    local Speed = Magnitude(object) / shared.Wagon.Speed

    local Tween = TweenService:Create(Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), properties)
    Tween:Play()

    if shared.Wagon.Enabled then
        Tween.Completed:Wait()
        wait(shared.Wagon.Wait)
    else
        Tween:Cancel()
    end
end

if shared.Wagon.Enabled and Player_Data.Quest.Current.Value ~= "" then
    To_Server.Handle_Initiate_S:FireServer("removequest", Player_Data.Quest)
end

local Quest = false
local Grandpa = workspace:WaitForChild("Grandpa Wagwon's Wagon")
local Deposit

while shared.Wagon.Enabled do
    if not (Character and Character:FindFirstChild("HumanoidRootPart")) then
        return
    end

    Character.Humanoid:ChangeState(11)

    if not Quest then
        Tween(Grandpa.Root, {CFrame = Grandpa.Root.CFrame})

        if shared.Wagon.Enabled and Magnitude(Grandpa.Root) <= 50 then
            Quest = true
            require(Npc_Dialogue.LocalScript.Functions).dowagonquest()
            Deposit = workspace:WaitForChild("Wagon_Deposit_Part")
        end
    end

    if Quest then
        Tween(Deposit, {CFrame = Deposit.CFrame})
        Quest = false
    end

    task.wait()
end
end


function autoRice()
        _G.Condition = true
        while _G.Condition and wait() do
        local Time = 2
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace")["Sarah"].HumanoidRootPart.CFrame})                    
        tween:Play()                     tween.Completed:Wait(E)
        
        wait(1)
        
        fireproximityprompt(workspace["Sarah"].UpperTorso.ProximityPrompt, 1, true)
        
        wait(5)
        --CLICK THROUGH RICE QUEST
        mousemoveabs(455,980)
        wait(1)
        mousemoveabs(460,980)
        wait(1)
        mouse1click(455,980)
        wait(1)
        mousemoveabs(455,980)
        wait(1)
        mousemoveabs(460,980)
        wait(1)
        mouse1click(455,980)
        wait(1)
        mousemoveabs(455,980)
        wait(1)
        mousemoveabs(460,980)
        wait(4)
        
        local Time = 1
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").StarterVillage_RiceStrings.RiceString.CFrame})                    
        tween:Play()                     tween.Completed:Wait(E)
        wait(0.1)
        fireproximityprompt(workspace["StarterVillage_RiceStrings"].RiceString.Rice_pick_proximity, 1, true)
        wait(1)
        local Time = 1
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").StarterVillage_RiceStrings.RiceString.CFrame})                    
        tween:Play()                     tween.Completed:Wait(E)
        wait(0.1)
        fireproximityprompt(workspace["StarterVillage_RiceStrings"].RiceString.Rice_pick_proximity, 1, true)
        wait(1)
        local Time = 1
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").StarterVillage_RiceStrings.RiceString.CFrame})                    
        tween:Play()                     tween.Completed:Wait(E)
        wait(0.1)
        fireproximityprompt(workspace["StarterVillage_RiceStrings"].RiceString.Rice_pick_proximity, 1, true)
        wait(1)
        local Time = 1
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").StarterVillage_RiceStrings.RiceString.CFrame})                    
        tween:Play()                     tween.Completed:Wait(E)
        wait(0.1)
        fireproximityprompt(workspace["StarterVillage_RiceStrings"].RiceString.Rice_pick_proximity, 1, true)
        wait(45)
        end
    end


function autoLvl()
        local Time = 10 
    local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").Somi.Head.CFrame})                    
    tween:Play()                     tween.Completed:Wait(E)
    


    ---instant level
    while true do task.wait()
    local args = {
        [1] = "AddQuest",
        [2] = "Players."..game.Players.LocalPlayer.name..".PlayerGui.Npc_Dialogue.LocalScript.Functions",
        [3] = 1657956848,
        [4] = game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Quest,
        [5] = {
            ["Current"] = "Rescue Somi's little sister Riyaku",
            ["List"] = {
                [1] = {
                    ["Progress"] = {
                        [1] = 2,
                        [2] = 2
                    },
                    ["Name"] = "Defeat 2 subordinates while carrying Riyaku"
                },
                [2] = {
                    ["Progress"] = {
                        [1] = 1,
                        [2] = 1
                    },
                    ["Name"] = "Bring Riyaku to somi"
                }
            }
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
    
    
    local args = {
        [1] = "Quest_add",
        [2] = "Players."..game.Players.LocalPlayer.name..".PlayerGui.Npc_Dialogue.LocalScript.Functions",
        [3] = 1657956948,
        [4] = {},
        [5] = game:GetService("Players").LocalPlayer,
        [6] = "royakurescuqthinggivebaxcktosomi"
    }
    
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
    
    
    local args = {
        [1] = true,
        [2] = 17940.679587696213
    }
    
    game:GetService("ReplicatedStorage").Remotes.moddelteasdasd123:FireServer(unpack(args))
    
    
    local args = {
        [1] = "removequest",
        [2] = game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Quest
    }
    
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
    end
    
    
    
    
    ---bypass mods detecting unusual activity
    local eventbypass
    
    eventbypass = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
    
        if not checkcaller() and self.Name == "moddelteasdasd123" and method == "FireServer" then
            print("Project Slayers anti-cheat has been blocked")
            return;
        end
    
        return eventbypass(self, ...)
    end)
end

function Flowers()
    while _G.Flowers == true do
        -- // Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Mob = game:GetService("Workspace")["Demon_Flowers_Spawn"]["Demon_Flower"]
local LinearTween = TweenInfo.new(10, Enum.EasingStyle.Linear)

-- // Workout where to tp to
local _, CharacterSize = Character:GetBoundingBox()
local HeightOffset = CharacterSize.Y / 2
local Position, MobSize = Mob:GetBoundingBox()
Position = Position + Vector3.new(0, MobSize.Y + HeightOffset, 0)

-- // Tween
local Tween = TweenService:Create(Character.PrimaryPart, LinearTween, {
    CFrame = Position
})
Tween:Play()
        local args = {
            [1] = "Players.11ddadd.PlayerScripts.Client_Modules.Main_Script",
            [2] = 100875.82903549999,
            [3] = "Clicked_lilly_flower",
            [4] = Vector3.new(-267.21600341796875, 281.6099853515625, -1784.2049560546875),
            [5] = workspace.Demon_Flowers_Spawn.Demon_Flower:FindFirstChild("Cube.002").Clicked_Effect}
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_C:FireServer(unpack(args))
        wait()
    end
end

function Muzan()
    while _G.Muzan == true do
        local cf = CFrame.new(game:GetService("Workspace").Muzan.SpawnPos.Value)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(10), {CFrame = cf})                    
tween:Play()
wait(1)
    end
    
end

function WaterBoss()
    while _G.WaterBoss == true do
        local Time = 0
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").Mobs.Bosses.Water.Giyu.HumanoidRootPart.CFrame})
        tween:Play()                     tween.Completed:Wait(E)
end
end

function Zen()
    while _G.Zen == true do
    local Time = 0
    local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = game:GetService("Workspace").Mobs.Bosses["Wind_Trainee"].Sanemi.Sanemi.HumanoidRootPart.CFrame})
    tween:Play()                     tween.Completed:Wait(E)
    end
end

---Buttons,Toggles
Tab:AddLabel("DONT PRESS ANYTHING WHEN KILL AURA IS ON")
Tab:AddToggle({
	Name = "Kill Aura(Dont Press Anything With This On)",
	Default = false,
	Callback = function(Value)
        _G.AutoHit = Value
        AutoHit()
	end    
})



Tab:AddToggle({
	Name = "Auto Civilians",
	Default = false,
	Callback = function(Value)
        _G.Autocivilians = Value
        Autocivilians()
	end    
})

Tab:AddToggle({
	Name = "Auto Demons",
    Default = false,
	Callback = function(Value)
        _G.Demon = Value
        Demon()
	end    

    
})

Tab:AddToggle({
	Name = "Auto Punch Logs",
    Default = false,
	Callback = function(Value)
        _G.PunchingLogs = Value
        PunchingLogs()
	end    
})

Tab:AddButton({
	Name = "Auto Lvl",
	Callback = function()
        autoLvl()
	end    
})

Tab:AddButton({
	Name = "Auto Rice",
	Callback = function()
        autoRice()
	end    
})

Tab:AddButton({
	Name = "Auto Wagon",
	Callback = function()
        Wagons12()
	end    
})

Tab:AddButton({
	Name = "Anti Afk",
	Callback = function()
        AntiAfk()
	end    

    
})



Tab2:AddToggle({
	Name = "Nezuko (You Gotta Be Close to Them)",
	Default = false,
	Callback = function(Value)
        _G.Nezuko = Value
        Nezuko()
	end    
})


Tab2:AddToggle({
	Name = "Thunder Boss",
	Default = false,
	Callback = function(Value)
        _G.ThunderBoss = Value
        ThunderBoss()
	end    
})

Tab2:AddToggle({
	Name = "Insect Boss (You Gotta Be Close to Them)",
	Default = false,
	Callback = function(Value)
        _G.InsectBoss = Value
        Insect()
	end    
})

Tab2:AddToggle({
	Name = "Water Boss (You Gotta Be Close to Them)",
	Default = false,
	Callback = function(Value)
        _G.WaterBoss = Value
        WaterBoss()
	end    
})
Tab2:AddToggle({
	Name = "Wind Boss (You Gotta Be Close to Them)",
	Default = false,
	Callback = function(Value)
        _G.Zen = Value
        Zen()
	end    
})
Tab3:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		print(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab4:AddButton({
	Name = "Tp Nezuko Boss",
	Callback = function()
        TpNezukoBoss()
	end    
})

Tab4:AddButton({
	Name = "Tp Wind boss",
	Callback = function()
        TpWindBoss()
	end    
})


Tab4:AddButton({
	Name = "Tp Thunder Boss",
	Callback = function()
        TpThunderBoss()
	end    
})
Tab4:AddButton({
	Name = "Tp Water Boss",
	Callback = function()
        TpWaterBoss()
	end    
})

Tab4:AddButton({
	Name = "Tp Insect Boss",
	Callback = function()
        TpInsectBoss()
	end    
})
Tab4:AddToggle({
	Name = "Tp BlackSmith",
	Default = false,
	Callback = function(Value)
        _G.BlackSmith = Value
        BlackSmith()
	end    
})
Tab4:AddToggle({
	Name = "Demon Flower Teleport",
	Default = false,
	Callback = function(Value)
        _G.Flowers = Value
        Flowers()
	end    
})
Tab4:AddToggle({
	Name = "Muzan Teleport",
	Default = false,
	Callback = function(Value)
        _G.Muzan = Value
        Muzan()
	end    
})




OrionLib:MakeNotification({
	Name = "Make Sure you Vouch",
	Content = "Make Sure you subscribe to my yt chanel",
	Image = "rbxassetid://4483345998",
	Time = 5
})

