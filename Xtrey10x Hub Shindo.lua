--Shindo Life

repeat wait() until game:IsLoaded()
--antiafk
local VirtualUser=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
	warn("anti-afk")
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
--variables
local player = game.Players.LocalPlayer
local mission = player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory")
--loading
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("Xtrey10x Hub - Shindo")
_G.ToggleColor = Color3.fromRGB(14, 14, 14)
_G.ButtonColor = Color3.fromRGB(14, 14, 14)
_G.ButtonTextColor = Color3.fromRGB(255, 255, 255)

--autofarm
local b = w:CreateFolder("Autofarm") -- Creates the folder(U will put here your buttons,etc)
getgenv().speed = 500
    local autofarm
b:Toggle("AutoFarm",function(bool)
	autofarm = bool

end)
b:Button("Autoclick",function(bool)

    for i = 1,999 do
        game.Players.LocalPlayer.Character.combat.update:FireServer("mouse1",true)
        wait(.4)
    end



end)
b:Button("AutoTree Jump",function(bool)
	_G.AutoRush = false
	_G.AutoChakra = false
	_G.AutoPunch = false
	_G.AutoTreeJump = true
	
	rush = 100 --- amount of how many times you want it to rush
	chakra = 100 --- amount of how many times you want it to charge your chakra
	punch = 100 --- amount of how many times you want it to punch
	TreeJump = 100 --- amount of how many times you want it to TreeJump
	
	loadstring(game:HttpGet("https://pastebin.com/raw/0feFJJmc"))();
end)
local RANKUPP
b:Toggle("AutoRank",function(bool)
	RANKUPP = bool
end)
local LEVEL = player.statz.lvl.lvl
local questdone = 0
local function QUESTDONE()
	questdone = questdone + 1
end
local function QUEST()
    for i,v in pairs(workspace.missiongivers:GetChildren()) do
        if v.Name == "" and v:FindFirstChild("Head") then
            local TALK = v:FindFirstChild("Talk")
            if v:FindFirstChild("Head") and v.Head:FindFirstChild("givemission") and v.Head.givemission.Enabled and v.Head.givemission:FindFirstChild("color").Image == "http://www.roblox.com/asset/?id=5459241648" --[[or v.Head.givemission.color.Image == "http://www.roblox.com/asset/?id=5459241799"]] then
    		    if v:WaitForChild("Talk"):WaitForChild("mobname") then
    			    local getmission = v:FindFirstChild("HumanoidRootPart")
                    local clienttalk = v:FindFirstChild("CLIENTTALK")
                    repeat wait()
    				    pcall(function()
    				        player.Character.HumanoidRootPart.CFrame=getmission.CFrame+Vector3.new(0,-7,0)
                            clienttalk:FireServer()
                            clienttalk:FireServer("accept")
                        end)                
                    until mission.Visible or not autofarm
                end
            end
        end
    end
    QUESTDONE()
end

local function FARM()
    for i,v in pairs(workspace.npc:GetChildren()) do
		local mobname = string.split(mission.bg.name.Text,"Defeat ")[1]
        if(string.find(mobname,"(s)")) then
			mobname = string.gsub(mobname,"(s)","")
        end
        if v.ClassName == "Model" and v:FindFirstChild("npctype") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 then
			repeat wait()
				pcall(function()
                    player.Character.HumanoidRootPart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,-7,0)
                    v.Humanoid.Health = 0
                end)
            until v.Humanoid.Health == 0 or mission.Visible == false or not autofarm or not v
        end
    end
end
local count
local function DISP()
	count = 0
	for i,v in pairs(workspace.missiongivers:GetChildren()) do
		if v.Name == "" and v:FindFirstChild("Head") then
            if v:FindFirstChild("Head") and v.Head:FindFirstChild("givemission") and v.Head.givemission.Enabled and v.Head.givemission:FindFirstChild("color") and v.Head.givemission.color.Image == "http://www.roblox.com/asset/?id=5459241648" --[[or v.Head.givemission.color.Image == "http://www.roblox.com/asset/?id=5459241799"]] then
			    count = count + 1
			end
		end
	end
end

spawn(function()
    while wait() do
        if autofarm then
			DISP()
			if count > 0 and mission.Visible == false then
			   QUEST()
	    	else
	    	    FARM()
            end
        end
    end
end)

local PRES = player.statz.prestige.maxlvlpres
local RANK = player.statz.prestige.rank
local RANKNUM = player.statz.prestige.number

spawn(function()
	while wait() do
		if RANKUPP and player.statz.lvl:FindFirstChild("lvl").Value == 1000 then
			if PRES.Value >= 1 or PRES.Value == 0 and RANK.Value == "Z" and RANKNUM.Value == "3" then
				repeat wait()
					player.startevent:FireServer("maxlvlpres")
				until player.statz.lvl:FindFirstChild("lvl").Value == 1 or not RANKUPP
			else
				repeat wait()
					game.Players.LocalPlayer.startevent:FireServer("rankup")
				until player.statz.lvl:FindFirstChild("lvl").Value == 1 or not RANKUPP
			end
		end
	end
end)
				
game:GetService('RunService').Stepped:connect(function()
    if autofarm then
	    pcall(function()
		    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		    if game:GetService("Workspace").daynight.Value == true then
		        daynight:Refresh("NIGHT")
		    else
		        daynight:Refresh("DAY")
		    end
			disp:Refresh("Availale Quest(s): " .. tostring(count))
			qdone:Refresh("Completed: " .. tostring(questdone))
		end)
	end
end)
local amigo,brr = pcall(function()
    game:GetService("RunService"):UnbindFromRenderStep(game.Players.LocalPlayer.Name .. "Main")
end)


local f = w:CreateFolder("Credits")
f:Label("made by trey#8491",{
	TextSize = 15;
    TextColor = Color3.fromRGB(255,255,255); 
    BgColor = Color3.fromRGB(14, 14, 14);
}) 
f:Label("https://discord.gg/tR8QvykFTC",{
	TextSize = 17;
    TextColor = Color3.fromRGB(255,255,255); 
    BgColor = Color3.fromRGB(14, 14, 14); 
}) 
f:Button("Copy Discord Link",function()
	setclipboard("https://discord.gg/tR8QvykFTC")
end)


--second section
local w = library:CreateWindow("Misc")
local b = w:CreateFolder("Misc")

local scrollfarm
b:Toggle("Scroll Farm",function(bool)
	scrollfarm = bool
end)
local jinfarm
b:Toggle("jin Scroll Farm",function(bool)
	jinfarm = bool
end)

b:Button("Esp",function(bool)
	-- -----------------------------------
--  ___      _   _   _              --
-- / __| ___| |_| |_(_)_ _  __ _ ___--
-- \__ \/ -_)  _|  _| | ' \/ _` (_-<--
-- |___/\___|\__|\__|_|_||_\__, /__/--
--                         |___/    --
-- -----------------------------------
-- -----------------------------------
ALLYCOLOR = {0,255,255}  	--//Color of the ESP  of people on the same team
ENEMYCOLOR =  {255,0,0} 	--//Color of the ESP  of people on NOT the same team
TRANSPARENCY = 0.5			--//Transparency of the ESP
HEALTHBAR_ACTIVATED = true 	--//Renders the Healthbar
--
--

--							!!!Don't Change Anything Below Here Unless You Know What You're Doing!!!

function createFlex()
-- -----------------------------------------------------------------------------------
--[VARIABLES] //Changing may result in Errors!
players = game:GetService("Players") --//Required for PF
faces = {"Front","Back","Bottom","Left","Right","Top"} --//Every possible Enum face
currentPlayer = nil --//Used for the Team-Check
lplayer = players.LocalPlayer --//The LocalPlayer
-- -----------------------------------------------------------------------------------
players.PlayerAdded:Connect(function(p)
currentPlayer = p
p.CharacterAdded:Connect(function(character) --//For when a new Player joins the game 
createESP(character)			
end)		
end)
-- -----------------------------------------------------------------------------------
function checkPart(obj)  if (obj:IsA("Part") or obj:IsA("MeshPart")) and obj.Name~="HumanoidRootPart" then return true end end --//Check if the Part is suitable 
-- -----------------------------------------------------------------------------------
function actualESP(obj) 

for i=0,5 do
surface = Instance.new("SurfaceGui",obj) --//Creates the SurfaceGui
surface.Face = Enum.NormalId[faces[i+1]] --//Adjusts the Face and chooses from the face table
surface.AlwaysOnTop = true

frame = Instance.new("Frame",surface)	--//Creates the viewable Frame
frame.Size = UDim2.new(1,0,1,0)
frame.BorderSizePixel = 0												
frame.BackgroundTransparency = TRANSPARENCY
if currentPlayer.Team == players.LocalPlayer.Team then --//Checks the Players Team
frame.BackgroundColor3 = Color3.new(ALLYCOLOR[1],ALLYCOLOR[2],ALLYCOLOR[3])	--//If in same Team											
else
frame.BackgroundColor3 = Color3.new(ENEMYCOLOR[1],ENEMYCOLOR[2],ENEMYCOLOR[3])	--//If in another Team
end

end
end
-- -----------------------------------------------------------------------------------
function createHealthbar(hrp) 
board =Instance.new("BillboardGui",hrp) --//Creates the BillboardGui with HumanoidRootPart as the Parent
board.Name = "total"
board.Size = UDim2.new(1,0,1,0)
board.StudsOffset = Vector3.new(3,1,0)
board.AlwaysOnTop = true

bar = Instance.new("Frame",board) --//Creates the red background
bar.BackgroundColor3 = Color3.new(255,0,0)
bar.BorderSizePixel = 0
bar.Size = UDim2.new(0.2,0,4,0)
bar.Name = "total2"

health = Instance.new("Frame",bar) --//Creates the changing green Frame
health.BackgroundColor3 = Color3.new(0,255,0)
health.BorderSizePixel = 0
health.Size = UDim2.new(1,0,hrp.Parent.Humanoid.Health/100,0)
hrp.Parent.Humanoid.Changed:Connect(function(property) --//Triggers when any Property changed
hrp.total.total2.Frame.Size = UDim2.new(1,0,hrp.Parent.Humanoid.Health/100,0) --//Adjusts the size of the green Frame								
end)
end
-- -----------------------------------------------------------------------------------
function createESP(c) --//Checks and calls the proper function
bugfix = c:WaitForChild("Head") --// *Used so the children of the character arent nil.
for i,v in pairs(c:GetChildren()) do
if checkPart(v) then
actualESP(v)
end
end
if HEALTHBAR_ACTIVATED then --//If the user decided to
createHealthbar(c:WaitForChild("HumanoidRootPart")) --//Calls the function of the creation
end
end
-- -----------------------------------------------------------------------------------
for i,people in pairs(players:GetChildren())do
if people ~= players.LocalPlayer then
currentPlayer = people
								--//Used for Players already in the Game
createESP(people.Character)
people.CharacterAdded:Connect(function(character)
createESP(character)			
end)
end
end
-- -----------------------------------------------------------------------------------
end --//End of the entire function

createFlex() --// Does exactly that :)
end)

b:Button("Scroll Esp",function(bool)
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v.ClassName == "Decal" and v.Parent.Name == "scroll" then
		local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		
		BillboardGui.Parent = v.Parent
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Size = UDim2.new(0, 50, 0, 50)
		BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
		
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = v.Parent.Parent.Name
		TextLabel.TextColor3 = Color3.new(1, 0, 0)
		TextLabel.TextScaled = true
		end
		end

end)


local d = w:CreateFolder("Quests Maker")
d:Button("Rushs",function()
	for i = 1,300 do
		game.Players.LocalPlayer.Character.combat.update:FireServer("rushw")
		wait(.25)
	end
end)
d:Button("Jumps",function()
	for v = 1,300 do
		game.Players.LocalPlayer.Character.combat.update:FireServer("takemovement2")
		wait(.25)
	end
end)
d:Button("Chi Charges",function()
	for i = 1,500 do
		game.Players.LocalPlayer.Character.combat.update:FireServer("key","c")
		wait(.1)
		game.Players.LocalPlayer.Character.combat.update:FireServer("key","cend")
		wait(.5)
	end
end)
d:Button("Punches",function()
	for i = 1,999 do
		game.Players.LocalPlayer.Character.combat.update:FireServer("mouse1",true)
		wait(.4)
	end
end)
d:Button("TP TrainLog",function()
	toTarget(player.Character.HumanoidRootPart.Position,workspace.npc.logtraining:FindFirstChild("HumanoidRootPart").Position,CFrame.new(game:GetService("Workspace").npc.logtraining:FindFirstChild("HumanoidRootPart").Position))
end)
local function SCROLLFARM()
	for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
		if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
			local scrollA = v.sh:FindFirstChild("invoke")
			print("SCROLL SPAWNED")
			pcall(function()
				toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
			    scrollA:FireServer(game.Players.LocalPlayer)
			    fireclickdetector(v.sh.ClickDetector)
			end)
		end
	end
end
local function SCROLLFARM1()
	for i,v in pairs(game.workspace:GetChildren()) do
		if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
			local scrollA = v.sh:FindFirstChild("invoke")
			print("SCROLL SPAWNED in workspace")
			pcall(function()
				toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
				scrollA:FireServer(game.Players.LocalPlayer)
				fireclickdetector(v.sh.ClickDetector)
			end)
		end
	end
end
spawn(function()
	while wait() do
		if scrollfarm then
			repeat wait()
				SCROLLFARM()
				SCROLLFARM1()
			until not scrollfarm
		end
	end
end)
local function JINFARM()
	for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
		if v.Name == "npc1" then
			repeat wait()
				pcall(function()
					toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-25,0)))
					player.Character.combat.update:FireServer("mouse1", true)
					v.Humanoid.Health = 0
					v.Humanoid.HealthChanged:Connect(function()
   						v.Humanoid.Health = 0
   					end)
				end)
			until v.Humanoid.Health == 0 or not v or not jinfarm
		end
	end
end
spawn(function()
	while wait() do
		if jinfarm then
			JINFARM()
		end
	end
end)
local g = w:CreateFolder("Infinite Mode")
g:Label("Enable your mode and setup when charge chakra (not max)",{
	TextSize = 15;
	TextColor = Color3.fromRGB(255,255,255); 
	BgColor = Color3.fromRGB(255, 140, 0);
})   
g:Button("InfiniteMode",function()
	local mode = game.Players.LocalPlayer.Character.combat.mode
    local copy = mode:Clone()
    copy.Parent = mode.Parent
    mode:Destroy()
    local chakra = string.split(game.Players.LocalPlayer.PlayerGui.Main.ingamearena.Bar.cha.Text,"CHI: ")[2]
    c = chakra:gsub("CH%: ","")
    local cha
    local function chakracheck()
		chakra = string.split(game.Players.LocalPlayer.PlayerGui.Main.ingamearena.Bar.cha.Text,"CHI: ")[2]
		c = chakra:gsub("CH%: ","")
		cha = c
	end
	halfchi = chakra/1.5
	print("CHI will recharge at "..halfchi)
	spawn(function() 
		while wait() do
			if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 0 then
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
			end
			chakracheck()
		end
	end)
	spawn(function() 
		while wait() do
			if tonumber(cha) < halfchi then
				game.Players.LocalPlayer.Character.combat.update:FireServer("key","c")
			else
				game.Players.LocalPlayer.Character.combat.update:FireServer("key","cend")
			end
		end
	end)
end)
g:Button("Disable InfMode",function()
	player.Character:BreakJoints()
end)


--3rd section
repeat wait() until game:IsLoaded()
local player = game.Players.LocalPlayer
local warplace = game:GetService("Workspace"):FindFirstChild("warmode")
--loading wally ui revamped By Aika
local w = library:CreateWindow("WAR - Shindo Life")
local c = w:CreateFolder("War Farm")
if warplace then
	--WAR
	c:Label("Snipe is built-in",{
		TextSize = 24;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(117, 50, 168);
	}) 
	local war 
	c:Toggle("Farm War",function(bool)
		war = bool
	end)
	local reset
	c:Toggle("Reset after round 21",function(bool)
		reset = bool
	end)
	--Suggested by Moddi#2715
	local refresh = c:Label("ROUND COUNTER",{
		TextSize = 24;
		TextColor = Color3.fromRGB(255,255,255); 
		BgColor = Color3.fromRGB(117, 50, 168);
	}) 
	local count = 0
	game:GetService('RunService').Stepped:connect(function()
		if war then
			pcall(function()
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end)
		end
	end)
	local function SCROLLFARM()
		for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
			if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
				local scrollA = v.sh:FindFirstChild("invoke")
				print("SCROLL SPAWNED")
				pcall(function()
				    player.Character.HumanoidRootPart.CFrame=v.sh.CFrame
					scrollA:FireServer(game.Players.LocalPlayer)
					fireclickdetector(v.sh.ClickDetector)
				end)
			end
		end
	end
	local function SCROLLFARM1()
		for i,v in pairs(game.workspace:GetChildren()) do
			if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
				local scrollA = v.sh:FindFirstChild("invoke")
				print("SCROLL SPAWNED in workspace")
				pcall(function()
					player.Character.HumanoidRootPart.CFrame=v.sh.CFrame
					scrollA:FireServer(game.Players.LocalPlayer)
					fireclickdetector(v.sh.ClickDetector)
				end)
			end
		end
	end
	spawn(function()
		while wait() do
			if war then
				repeat wait()
					SCROLLFARM()
					SCROLLFARM1()
				until war
			end
		end
	end)
	spawn(function()
		while wait() do
			if war then
				pcall(function()
					refresh:Refresh("War Completed: " .. count)
					refreshC:Refresh("Round: " .. workspace.warserver.round.Value)
				end)
				for i,v in pairs(workspace.npc:GetChildren()) do
					if workspace.warserver:FindFirstChild("zetsu").Value > 0 and string.find(workspace.warserver.text.Value, "Left") or string.find(workspace.warserver.text.Value, "DEFEAT") and v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and not v:FindFirstChild("megaboss") then
						wait(.2)
						pcall(function()
						    player.Character.HumanoidRootPart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,-8,0)
							v.Humanoid.Health = 0
						end)
					elseif v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and v:FindFirstChild("megaboss") then
						wait(6)
						pcall(function()
						    player.Character.HumanoidRootPart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,-8,0)
							v.Humanoid.Health = 0
						end)
					end
				end
				if reset then
					for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
						if v.Name == "warserver" and v:FindFirstChild("round").Value > 20 then
							wait(5)
							player.Character:BreakJoints()
							repeat wait()
							until v.round.Value == 0
							count = count + 1
						end
					end
				end
			end
		end
	end)
	local amigo,brr = pcall(function()
    game:GetService("RunService"):UnbindFromRenderStep(game.Players.LocalPlayer.Name .. "Main")
	end)
	local f = w:CreateFolder("Credits")
    f:Label("made by reav#2966 | Shindo Life ver 045.3",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(117, 50, 168);
    }) 
    f:Label("https://discord.gg/aDRStgw",{
        TextSize = 17;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(117, 50, 168); 
    }) 
    f:Button("Copy Discord Link",function()
        setclipboard("https://discord.gg/aDRStgw")
    end)
else
    c:Label("YOU MUST RUN War Mode",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(20, 20, 20);
    }) 
end






----spin






local menuplace = 4616652839
local w = library:CreateWindow("SPIN")
local e = w:CreateFolder("Get BloodLine")
if game.PlaceId == menuplace then
	
    local kgs = {}
    for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
        if v:FindFirstChild("KG") then
            table.insert(kgs, v.Name)
        end
    end
    e:Label("Select the Bloodline you want to change",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(69,69,69);
    }) 
    e:Label("Choose your BL and press SPIN",{
        TextSize = 15;
    	TextColor = Color3.fromRGB(255,255,255); 
    	BgColor = Color3.fromRGB(69,69,69);
    }) 
    local b
    local kgslot
    local kgvalue
    e:Dropdown("BLOODLINE SLOT",{"kg1", "kg2", "kg3", "kg4"},true,function(kgS)
        b = kgS
    	kgslot = game.Players.LocalPlayer.statz.main:FindFirstChild(b)
    	kgvalue = kgslot.Value
    	print(kgslot)
    	print(kgvalue)
    end)
    local a1
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG1)
        print("Selected: " .. KG1)
    	a1 = KG1
    end)
    local a2
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG2)
        print("Selected: " .. KG2)
    	a2 = KG2
    end)
    local a3
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG3)
        print("Selected: " .. KG3)
    	a3 = KG3
    end)
    local a4
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG4)
        print("Selected: " .. KG4)
    	a4 = KG4
    end)
    local a5
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG5)
        print("Selected: " .. KG5)
    	a5 = KG5
    end)
    e:Button("Start Spin",function()
        game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
        kgslot.ChildAdded:Connect(function(yes)
            if yes.Name == "dontspin" then
                wait(.1)
                yes:Destroy()
            end
        end)
    	local spins = game.Players.LocalPlayer.statz.spins.Value
    	local des = game.Players.LocalPlayer.statz.spins
        spawn(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
                if v:FindFirstChild("KG") then
                    local a = Instance.new("StringValue")
                    a.Name = v.Name
                    a.Parent = game.Players.LocalPlayer.statz.genkailevel
                end
            end
        end)
    	spawn(function()
    	    while wait() do
    		    if spins > 0 then
                    spins = game.Players.LocalPlayer.statz.spins.Value
                	kgvalue = kgslot.Value
                	print("Rolled: " .. kgvalue)
                	if kgvalue ~= a1 and kgvalue ~= a2 and kgvalue ~= a3 and kgvalue ~= a4 and kgvalue ~= a5 then
                	    kgvalue = kgslot.Value
                		game.Players.LocalPlayer.startevent:FireServer("spin", b)
                		wait(.2)
                		kgvalue = kgslot.Value
                	else
                	    print("You have got: " .. kgvalue)
                	end
                else
                    player.statz.spins:Destroy()
                    game:GetService('TeleportService'):Teleport(game.PlaceId, player)
    		    end
    		end
    	end)
    end)
    e:Label("It will reset once you have 0 spin left",{
        TextSize = 15;
    	TextColor = Color3.fromRGB(255,255,255); 
    	BgColor = Color3.fromRGB(69,69,69);
    }) 
    e:Button("Save BloodLine",function()
        game:Shutdown()
    end)
	local ee = w:CreateFolder("Get Element")
    local elm = {}
    for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
        if v:FindFirstChild("ELEMENT") then
            table.insert(elm, v.Name)
        end
    end
    ee:Label("Select the Element slot you want to change",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(69,69,69);
    }) 
    ee:Label("Choose your Element and press SPIN",{
        TextSize = 15;
    	TextColor = Color3.fromRGB(255,255,255); 
    	BgColor = Color3.fromRGB(69,69,69);
    }) 
    local b
    local kgslot
    local kgvalue
    ee:Dropdown("ELEMENT SLOT",{"element1", "element2", "element3", "element4"},true,function(kgS)
        b = kgS
    	kgslot = game.Players.LocalPlayer.statz.main:FindFirstChild(b)
    	kgvalue = kgslot.Value
    	print(kgslot)
    	print(kgvalue)
    end)
    local a1
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG1)
        print("Selected: " .. KG1)
    	a1 = KG1
    end)
    local a2
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG2)
        print("Selected: " .. KG2)
    	a2 = KG2
    end)
    local a3
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG3)
        print("Selected: " .. KG3)
    	a3 = KG3
    end)
    local a4
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG4)
        print("Selected: " .. KG4)
    	a4 = KG4
    end)
    local a5
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG5)
        print("Selected: " .. KG5)
    	a5 = KG5
    end)
    ee:Button("Start Spin",function()
        game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
        kgslot.ChildAdded:Connect(function(yes)
            if yes.Name == "dontspin" then
                wait(.1)
                yes:Destroy()
            end
        end)
    	local spins = game.Players.LocalPlayer.statz.spins.Value
    	local des = game.Players.LocalPlayer.statz.spins
        spawn(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
                if v:FindFirstChild("KG") then
                    local a = Instance.new("StringValue")
                    a.Name = v.Name
                    a.Parent = game.Players.LocalPlayer.statz.genkailevel
                end
            end
        end)
    	spawn(function()
    	    while wait() do
    		    if spins > 0 then
                    spins = game.Players.LocalPlayer.statz.spins.Value
                	kgvalue = kgslot.Value
                	print("Rolled: " .. kgvalue)
                	if kgvalue ~= a1 and kgvalue ~= a2 and kgvalue ~= a3 and kgvalue ~= a4 and kgvalue ~= a5 then
                	    kgvalue = kgslot.Value
                		game.Players.LocalPlayer.startevent:FireServer("spin", b)
                		wait(.2)
                		kgvalue = kgslot.Value
                	else
                	    print("You have got: " .. kgvalue)
                	end
                else
                    player.statz.spins:Destroy()
                    game:GetService('TeleportService'):Teleport(game.PlaceId, player)
    		    end
    		end
    	end)
    end)
    ee:Label("It will reset once you have 0 spin left",{
        TextSize = 15;
    	TextColor = Color3.fromRGB(255,255,255); 
    	BgColor = Color3.fromRGB(117, 50, 168);
    }) 
    ee:Button("Save Element",function()
        game:Shutdown()
    end)
	local f = w:CreateFolder("Credits")
    f:Label("made by trey#8491",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(69,69,69);
    }) 
    f:Label("https://discord.gg/tR8QvykFTC",{
        TextSize = 17;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(69,69,69); 
    }) 
    f:Button("Copy Discord Link",function()
        setclipboard("https://discord.gg/tR8QvykFTC")
    end)
else
    e:Label("Run This Only In Menu",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(69,69,69);
    }) 
end






