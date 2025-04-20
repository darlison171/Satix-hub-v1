--[[ 
███████╗ █████╗ ████████╗██╗██╗  ██╗    ██╗  ██╗██╗   ██╗██████╗ 
██╔════╝██╔══██╗╚══██╔══╝██║██║ ██╔╝    ██║  ██║██║   ██║██╔══██╗
███████╗███████║   ██║   ██║█████╔╝     ███████║██║   ██║██████╔╝
╚════██║██╔══██║   ██║   ██║██╔═██╗     ██╔══██║██║   ██║██╔═══╝ 
███████║██║  ██║   ██║   ██║██║  ██╗    ██║  ██║╚██████╔╝██║     
╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═╝     
]]--

-- Satix Hub - Versão Completa | Estilo UI: Redz Hub Dark Mode
-- Feito para uso em Mobile e PC

repeat wait() until game:IsLoaded()
local Satix = {}
local player = game.Players.LocalPlayer
local runService = game:GetService("RunService")

-- Biblioteca da UI estilo Redz
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xshvi/free/main/RedzUILib"))()
local Window = Library:Window("Satix Hub", "Versão Mobile e PC", Color3.fromRGB(64,64,64), Enum.KeyCode.RightControl)

-- Aba Principal
local MainTab = Window:Tab("Auto Farm", "rbxassetid://6023426923")

MainTab:Toggle("Auto Farm Mobs",false,function(state)
    Satix.AutoFarm = state
    while Satix.AutoFarm and task.wait() do
        pcall(function()
            -- Exemplo de Farm simples (completa nas próximas partes)
            local mob = workspace.Enemies:FindFirstChild("Bandit [Lv. 5]")
            if mob and mob:FindFirstChild("HumanoidRootPart") then
                repeat
                    player.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                    task.wait(0.1)
                until not mob.Parent or mob.Humanoid.Health <= 0 or not Satix.AutoFarm
            end
        end)
    end
end)

MainTab:Toggle("Auto Quest",false,function(state)
    Satix.AutoQuest = state
    while Satix.AutoQuest and task.wait(1) do
        pcall(function()
            -- Aceita missão automaticamente (exemplo inicial)
            if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Quest") == nil then
                local args = {
                    [1] = "StartQuest",
                    [2] = "BanditQuest1",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end)
    end
end)

MainTab:Toggle("Auto Farm Mastery",false,function(state)
    Satix.AutoMastery = state
    -- função completa nas próximas partes
end)

MainTab:Dropdown("Método de Ataque",{"Melee","Sword","Fruit"},function(selected)
    Satix.ModoAtaque = selected
end)

-- Outras abas vêm a seguir (PvP, Bosses, Teleporte, Raças, Eventos...)

-- SATIX HUB - PARTE 2 (continuação)

-- Aba PvP
local PvPTab = Window:Tab("Auto PvP", "rbxassetid://6031075931")

PvPTab:Toggle("Auto PvP (Mobile)", false, function(state)
    Satix.AutoPvPMobile = state
    while Satix.AutoPvPMobile and task.wait() do
        pcall(function()
            for _,v in pairs(game.Players:GetPlayers()) do
                if v ~= player and v.Team ~= player.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                    task.wait(0.1)
                end
            end
        end)
    end
end)

PvPTab:Toggle("Auto PvP (PC)", false, function(state)
    Satix.AutoPvPPC = state
    -- versão com mouseclick virá na Parte 3
end)

-- Aba Teleporte
local TP = Window:Tab("Teleportes", "rbxassetid://6035193502")

TP:Button("TP para Ilha Inicial", function()
    player.Character.HumanoidRootPart.CFrame = CFrame.new(109, 18, 1110)
end)

TP:Button("TP para Trial Atual", function()
    if workspace:FindFirstChild("TrialDoor") then
        player.Character.HumanoidRootPart.CFrame = workspace.TrialDoor.CFrame
    end
end)

TP:Button("TP Lever V4", function()
    if workspace:FindFirstChild("Lever") then
        player.Character.HumanoidRootPart.CFrame = workspace.Lever.CFrame + Vector3.new(0, 5, 0)
    end
end)

-- Aba Bosses
local BossTab = Window:Tab("Bosses/Eventos", "rbxassetid://6034981504")

BossTab:Toggle("Auto Rip Indra", false, function(state)
    Satix.AutoIndra = state
    while Satix.AutoIndra and task.wait(2) do
        local indra = workspace.Enemies:FindFirstChild("rip_indra True Form")
        if indra and indra:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = indra.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
        end
    end
end)

BossTab:Toggle("Auto Katakuri V2", false, function(state)
    Satix.AutoKata = state
    while Satix.AutoKata and task.wait(2) do
        local kata = workspace.Enemies:FindFirstChild("Charlotte Katakuri [Raid Boss]")
        if kata and kata:FindFirstChild("HumanoidRootPart") -- Parte 3: Auto Race, Haki, Observation V1, V2, V3, V4
Satix.AutoRaceV1 = true
Satix.AutoRaceV2 = true
Satix.AutoRaceV3 = true
Satix.AutoRaceV4 = true
Satix.AutoActivateHaki = true
Satix.AutoObservationV1 = true

spawn(function()
    while task.wait(3) do
        if Satix.AutoActivateHaki then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
        end
        if Satix.AutoObservationV1 then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("Ken")
        end
        if Satix.AutoRaceV1 then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyRace", "Human")
        end
        if Satix.AutoRaceV2 then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("UnlockRaceV2")
        end
        if Satix.AutoRaceV3 then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("UnlockRaceV3")
        end
        if Satix.AutoRaceV4 then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("AwakenRace")
        end
    end
end)

-- Parte 4: Auto Sabre, Auto Coletar Ovo, Auto Coletar Osso
Satix.AutoSabre = true
Satix.AutoSaberDoor = true
Satix.AutoColetarOvo = true
Satix.AutoColetarOsso = true

spawn(function()
    while task.wait(5) do
        if Satix.AutoSabre then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", "Saber Expert")
        end
        if Satix.AutoSaberDoor and workspace:FindFirstChild("SaberDoor") then
            fireclickdetector(workspace.SaberDoor.ClickDetector)
        end
        if Satix.AutoColetarOvo then
            for _,v in pairs(workspace:GetDescendants()) do
                if v.Name == "Egg" and v:IsA("Model") then
                    teleportTo(v:GetModelCFrame())
                end
            end
        end
        if Satix.AutoColetarOsso then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy")
        end
    end
end)

-- Parte 5: Auto Craft Dino Rood
Satix.AutoCraftDino = true

spawn(function()
    while Satix.AutoCraftDino and task.wait(10) do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("DinoFood", "Craft")
    end
end)

-- Parte 6: Auto Eventos Marítimos
Satix.AutoSeaEvents = true

spawn(function()
    while Satix.AutoSeaEvents and task.wait(1) do
        local beast = getEnemy("Sea Beast")
        if beast then
            teleportTo(beast.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
        end
    end
end)

-- Parte 7: Auto Treinar Desvio (Observation XP)
Satix.AutoTreinarDesvios = true

spawn(function()
    while Satix.AutoTreinarDesvios and task.wait(1) do
        useKey("E")
    end
end)

-- Parte 8: Auto Enchant Itens
Satix.AutoEnchant = true

spawn(function()
    while Satix.AutoEnchant and task.wait(5) do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("Blacksmith", "Enchant")
    end
end)

-- Parte 9: Auto Maestria (Espada e Fruta)
Satix.AutoMasterySword = true
Satix.AutoMasteryFruit = true

spawn(function()
    while task.wait(1) do
        if Satix.AutoMasterySword or Satix.AutoMasteryFruit then
            for _,enemy in pairs(workspace.Enemies:GetChildren()) do
                if enemy:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                    teleportTo(enemy.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                    if Satix.AutoMasterySword then
                        useKey("Z") -- ataque espada
                    elseif Satix.AutoMasteryFruit then
                        useKey("X") -- ataque fruta
                    end
                end
            end
        end
    end
end)

-- Parte 10: Auto Compra de Estilos e Missões
Satix.AutoBuyHaki = true
Satix.AutoBuyEstilo = true
Satix.AutoMissaoEstilo = true

spawn(function()
    while task.wait(10) do
        if Satix.AutoBuyHaki then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki")
        end
        if Satix.AutoBuyEstilo then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyFightingStyle", "Electric")
        end
        if Satix.AutoMissaoEstilo then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", "ElectricClaw")
        end
    end
end)

-- Parte 11: Auto Dungeon, Arena PvP, Factory, Totem, Fish Quest
Satix.AutoDungeon = true
Satix.AutoArenaPvP = true
Satix.AutoFactory = true
Satix.AutoTotem = true
Satix.AutoFishQuest = true

spawn(function()
    while task.wait(15) do
        if Satix.AutoDungeon then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartDungeon")
        end
        if Satix.AutoArenaPvP then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("JoinArena")
        end
        if Satix.AutoFactory then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartFactoryRaid")
        end
        if Satix.AutoTotem then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateTotem")
        end
        if Satix.AutoFishQuest then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartFishQuest")
        end
    end
end)

-- Parte 12: Auto Dragon Talon V2, No Fog, Speed Hack
Satix.AutoDragonTalonV2 = true
Satix.AutoNoFog = true
Satix.AutoSpeedHack = true

spawn(function()
    while task.wait(1) do
        if Satix.AutoDragonTalonV2 then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartDragonTalonV2")
        end
        if Satix.AutoNoFog then
            game.Lighting.FogEnd = math.huge
        end
        if Satix.AutoSpeedHack then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
        end
    end
end)

-- Parte 13: Auto Stats, ESP, Teleport com Preview
Satix.AutoStats = true
Satix.AutoESP = true
Satix.AutoTeleportPreview = true

spawn(function()
    while task.wait(3) do
        if Satix.AutoStats then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("AutoStats")
        end
        if Satix.AutoESP then
            -- Exibir objetos e players no mapa
            for _,v in pairs(workspace:GetChildren()) do
                if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                    -- Código de ESP
                end
            end
        end
        if Satix.AutoTeleportPreview then
            -- Código para preview de teleport
        end
    end
end)

-- Mais funções serão adicionadas nas próximas partes!then
            player.Character.HumanoidRootPart.CFrame = kata.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
        end
    end
end)

BossTab:Toggle("Auto Summon Indra", false, function(state)
    if state then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SummonIndra")
    end
end)

BossTab:Toggle("Auto Pull Lever", false, function(state)
    if state and workspace:FindFirstChild("Lever") then
        fireclickdetector(workspace.Lever.ClickDetector)
    end
end)

-- Parte 14: Auto Raids, Bosses e Sea Events
Satix.AutoRaids = true
Satix.AutoBosses = true
Satix.AutoSeaEvent = true

spawn(function()
    while task.wait(5) do
        if Satix.AutoRaids then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartRaid")
        end
        if Satix.AutoBosses then
            local bosses = {"KatakuriV2", "RipIndra", "SeaBeast", "FactoryRaidBoss"}
            for _, boss in pairs(bosses) do
                if workspace:FindFirstChild(boss) then
                    teleportTo(workspace[boss].HumanoidRootPart.CFrame)
                end
            end
        end
        if Satix.AutoSeaEvent then
            local seaEvent = workspace:FindFirstChild("SeaEvent")
            if seaEvent then
                teleportTo(seaEvent.CFrame)
            end
        end
    end
end)

-- Parte 15: Auto PvP, Auto Bounty, Auto Farm Mastery
Satix.AutoPvP = true
Satix.AutoBounty = true
Satix.AutoFarmMastery = true

spawn(function()
    while task.wait(2) do
        if Satix.AutoPvP then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("PvP")
        end
        if Satix.AutoBounty then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartBounty")
        end
        if Satix.AutoFarmMastery then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("FarmMastery")
        end
    end
end)

-- Parte 16: Auto Teleport para Ilhas
Satix.AutoTeleportIlhas = true

spawn(function()
    while Satix.AutoTeleportIlhas do
        for _, ilha in pairs(workspace:GetChildren()) do
            if ilha.Name == "Island" then
                teleportTo(ilha.CFrame)
                task.wait(5) -- Intervalo entre os teleportes
            end
        end
    end
end)

-- Parte 17: Auto Haki do Armamento, Auto Haki da Observação
Satix.AutoBusoHaki = true
Satix.AutoKenHaki = true

spawn(function()
    while task.wait(1) do
        if Satix.AutoBusoHaki then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
        end
        if Satix.AutoKenHaki then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("Ken")
        end
    end
end)

-- Parte 18: Auto Matar Mobs com Escolha de Estilo (Espada, Click da Fruta, Estilo de Luta)
Satix.AutoMatarMobs = true
Satix.EspecificarEstiloDeLuta = "Espada" -- Pode ser "Espada", "Fruta", ou "Estilo de Luta"

spawn(function()
    while task.wait(1) do
        if Satix.AutoMatarMobs then
            for _, mob in pairs(workspace.Mobs:GetChildren()) do
                if mob:FindFirstChild("HumanoidRootPart") then
                    teleportTo(mob.HumanoidRootPart.CFrame)
                    if Satix.EspecificarEstiloDeLuta == "Espada" then
                        useKey("Z")
                    elseif Satix.EspecificarEstiloDeLuta == "Fruta" then
                        useKey("X")
                    elseif Satix.EspecificarEstiloDeLuta == "Estilo de Luta" then
                        useKey("C")
                    end
                end
            end
        end
    end
end)

-- Parte 19: Auto Dojo Hunter e Trainer
Satix.AutoDojoHunter = true
Satix.AutoDojoTrainer = true

spawn(function()
    while task.wait(5) do
        if Satix.AutoDojoHunter then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartDojoHunter")
        end
        if Satix.AutoDojoTrainer then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartDojoTrainer")
        end
    end
end)

-- Parte 20: Auto Factory Raid
Satix.AutoFactoryRaid = true

spawn(function()
    while Satix.AutoFactoryRaid and task.wait(10) do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartFactoryRaid")
    end
end)

-- Parte 21: Auto Missão de Estilo de Luta - Electric Claw
Satix.AutoMissaoEstiloLuta = "ElectricClaw"

spawn(function()
    while Satix.AutoMissaoEstiloLuta do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", Satix.AutoMissaoEstiloLuta)
        task.wait(30) -- Intervalo para nova missão
    end
end)

-- Parte 22: Auto Raça, Auto Raça V2, V3
Satix.AutoRacaV2 = true
Satix.AutoRacaV3 = true

spawn(function()
    while Satix.AutoRacaV2 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("UnlockRaceV2")
        task.wait(5)
    end
    while Satix.AutoRacaV3 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("UnlockRaceV3")
        task.wait(10)
    end
end)

-- Parte 23: Auto Blox Fruits V2 (Habilidades e Espada)
Satix.AutoBloxFruitV2 = true

spawn(function()
    while Satix.AutoBloxFruitV2 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateFruitSkill")
        task.wait(15)
    end
end)

-- Parte 24: Auto PvP para Todos os Bosses (RipIndra, Katakuri)
Satix.AutoPvPBosses = true

spawn(function()
    while Satix.AutoPvPBosses do
        if workspace:FindFirstChild("RipIndra") then
            teleportTo(workspace.RipIndra.HumanoidRootPart.CFrame)
        end
        if workspace:FindFirstChild("KatakuriV2") then
            teleportTo(workspace.KatakuriV2.HumanoidRootPart.CFrame)
        end
        task.wait(10)
    end
end)

-- Parte 25: Auto Loot (Itens Raros - CDK, Soul Guitar, God Human)
Satix.AutoLootItens = true

spawn(function()
    while Satix.AutoLootItens do
        for _, item in pairs(workspace:GetChildren()) do
            if item:IsA("Model") and item.Name == "DevilFruit" then
                teleportTo(item.CFrame)
            end
        end
        task.wait(10)
    end
end)

-- Parte 26: Auto Mastery e Farm de Fruta
Satix.AutoFarmMasteryFruit = true

spawn(function()
    while Satix.AutoFarmMasteryFruit do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("FarmMasteryFruit")
        task.wait(5)
    end
end)

-- Parte 27: Auto Trials V4
Satix.AutoTrialsV4 = true

spawn(function()
    while Satix.AutoTrialsV4 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartTrialV4")
        task.wait(15)
    end
end)

-- Parte 28: Auto Enchant de Armas
Satix.AutoEnchantArmas = true

spawn(function()
    while Satix.AutoEnchantArmas do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("EnchantWeapon")
        task.wait(10)
    end
end)

-- Parte 29: Auto Katakuri e Rip Indra
Satix.AutoKatakuriRipIndra = true

spawn(function()
    while Satix.AutoKatakuriRipIndra do
        if workspace:FindFirstChild("KatakuriV2") then
            teleportTo(workspace.KatakuriV2.HumanoidRootPart.CFrame)
        end
        if workspace:FindFirstChild("RipIndra") then
            teleportTo(workspace.RipIndra.HumanoidRootPart.CFrame)
        end
        task.wait(10)
    end
end)

-- Parte 30: Auto Bounty Hunt e Coleta de Frutas
Satix.AutoBountyHunt = true
Satix.AutoCollectFruits = true

spawn(function()
    while Satix.AutoBountyHunt do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartBounty")
        task.wait(20)
    end
    while Satix.AutoCollectFruits do
        for _, fruit in pairs(workspace:GetChildren()) do
            if fruit.Name == "Fruit" then
                teleportTo(fruit.CFrame)
            end
        end
        task.wait(10)
    end
end)

-- Parte 31: Auto Sea Beast (caçar e teleportar para eventos)
Satix.AutoSeaBeastHunt = true

spawn(function()
    while Satix.AutoSeaBeastHunt do
        local seaBeast = workspace:FindFirstChild("SeaBeast")
        if seaBeast then
            teleportTo(seaBeast.HumanoidRootPart.CFrame)
        end
        task.wait(15)
    end
end)

-- Parte 33: Auto Farm de Mobs (Vários Estilos)
Satix.AutoFarmMobs = true
Satix.FarmStyle = "Sword" -- "Sword", "Fruit", "Combat"

spawn(function()
    while Satix.AutoFarmMobs do
        for _, mob in pairs(workspace.Mobs:GetChildren()) do
            if mob:FindFirstChild("HumanoidRootPart") then
                teleportTo(mob.HumanoidRootPart.CFrame)
                if Satix.FarmStyle == "Sword" then
                    useKey("Z")
                elseif Satix.FarmStyle == "Fruit" then
                    useKey("X")
                elseif Satix.FarmStyle == "Combat" then
                    useKey("C")
                end
            end
        end
        task.wait(5)
    end
end)

-- Parte 34: Auto Sabre (Espada) para Combate
Satix.AutoSabre = true

spawn(function()
    while Satix.AutoSabre do
        local sabre = workspace:FindFirstChild("Sabre")
        if sabre then
            teleportTo(sabre.HumanoidRootPart.CFrame)
            useKey("Z") -- Usar ataque com sabre
        end
        task.wait(10)
    end
end)

-- Parte 35: Auto Raça (V1, V2, V3)
Satix.AutoRacaV1 = true
Satix.AutoRacaV2 = true
Satix.AutoRacaV3 = true

spawn(function()
    while Satix.AutoRacaV1 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateRaceV1")
        task.wait(5)
    end
    while Satix.AutoRacaV2 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateRaceV2")
        task.wait(10)
    end
    while Satix.AutoRacaV3 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateRaceV3")
        task.wait(15)
    end
end)

-- Parte 36: Auto Haki da Observação V1 e V2
Satix.AutoKenHakiV1 = true
Satix.AutoKenHakiV2 = true

spawn(function()
    while Satix.AutoKenHakiV1 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("KenHakiV1")
        task.wait(5)
    end
    while Satix.AutoKenHakiV2 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("KenHakiV2")
        task.wait(10)
    end
end)

-- Parte 37: Auto Ativar V3 e V4 Haki (Buso)
Satix.AutoBusoV3 = true
Satix.AutoBusoV4 = true

spawn(function()
    while Satix.AutoBusoV3 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateBusoV3")
        task.wait(7)
    end
    while Satix.AutoBusoV4 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateBusoV4")
        task.wait(12)
    end
end)

-- Parte 38: Auto Trials V3, V4 e V5
Satix.AutoTrialsV3 = true
Satix.AutoTrialsV4 = true
Satix.AutoTrialsV5 = true

spawn(function()
    while Satix.AutoTrialsV3 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartTrialV3")
        task.wait(20)
    end
    while Satix.AutoTrialsV4 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartTrialV4")
        task.wait(25)
    end
    while Satix.AutoTrialsV5 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartTrialV5")
        task.wait(30)
    end
end)

-- Parte 39: Auto Loot (Itens Raros e Armas)
Satix.AutoLootRareItems = true
Satix.AutoLootWeapons = true

spawn(function()
    while Satix.AutoLootRareItems do
        for _, item in pairs(workspace:GetChildren()) do
            if item:IsA("Model") and item.Name == "RareItem" then
                teleportTo(item.CFrame)
            end
        end
        task.wait(10)
    end
    while Satix.AutoLootWeapons do
        for _, weapon in pairs(workspace:GetChildren()) do
            if weapon:IsA("Model") and weapon.Name == "Weapon" then
                teleportTo(weapon.CFrame)
            end
        end
        task.wait(15)
    end
end)

-- Parte 40: Auto Collect Bones, Eggs and Other Items
Satix.AutoCollectBones = true
Satix.AutoCollectEggs = true

spawn(function()
    while Satix.AutoCollectBones do
        local bones = workspace:FindFirstChild("Bones")
        if bones then
            teleportTo(bones.CFrame)
        end
        task.wait(10)
    end
    while Satix.AutoCollectEggs do
        local eggs = workspace:FindFirstChild("Egg")
        if eggs then
            teleportTo(eggs.CFrame)
        end
        task.wait(10)
    end
end)

-- Parte 41: Auto Coletar Fruits e Itens Raros
Satix.AutoCollectFruits = true
Satix.AutoCollectGodHuman = true

spawn(function()
    while Satix.AutoCollectFruits do
        for _, fruit in pairs(workspace:GetChildren()) do
            if fruit:IsA("Model") and fruit.Name == "DevilFruit" then
                teleportTo(fruit.CFrame)
            end
        end
        task.wait(10)
    end
    while Satix.AutoCollectGodHuman do
        local godHuman = workspace:FindFirstChild("GodHuman")
        if godHuman then
            teleportTo(godHuman.CFrame)
        end
        task.wait(10)
    end
end)

-- Parte 42: Auto Matar Rip Indra e Katakuri
Satix.AutoRipIndra = true
Satix.AutoKatakuri = true

spawn(function()
    while Satix.AutoRipIndra do
        local ripIndra = workspace:FindFirstChild("RipIndra")
        if ripIndra then
            teleportTo(ripIndra.HumanoidRootPart.CFrame)
        end
        task.wait(15)
    end
    while Satix.AutoKatakuri do
        local katakuri = workspace:FindFirstChild("KatakuriV2")
        if katakuri then
            teleportTo(katakuri.HumanoidRootPart.CFrame)
        end
        task.wait(20)
    end
end)

-- Parte 43: Auto Deixar Mobs Morrem com Estilo de Combate
Satix.AutoMobsDeath = true

spawn(function()
    while Satix.AutoMobsDeath do
        for _, mob in pairs(workspace.Mobs:GetChildren()) do
            if mob:FindFirstChild("HumanoidRootPart") then
                teleportTo(mob.HumanoidRootPart.CFrame)
                useKey("C") -- Estilo de Luta (Exemplo)
            end
        end
        task.wait(5)
    end
end)

-- Parte 44: Auto Fishing Quest (Pesca)
Satix.AutoFishingQuest = true

spawn(function()
    while Satix.AutoFishingQuest do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartFishingQuest")
        task.wait(30)
    end
end)

-- Parte 45: Auto Dragon Talon V2
Satix.AutoDragonTalonV2 = true

spawn(function()
    while Satix.AutoDragonTalonV2 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartDragonTalonV2")
        task.wait(20)
    end
end)

-- Parte 46: Auto Craft Dino Rod (Crafting)
Satix.AutoCraftDinoRod = true

spawn(function()
    while Satix.AutoCraftDinoRod do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftDinoRod")
        task.wait(30)
    end
end)

-- Parte 47: Auto Pirate Raid e Factory Raid
Satix.AutoPirateRaid = true
Satix.AutoFactoryRaid = true

spawn(function()
    while Satix.AutoPirateRaid do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartPirateRaid")
        task.wait(30)
    end
    while Satix.AutoFactoryRaid do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartFactoryRaid")
        task.wait(40)
    end
end)

-- Parte 48: Auto Event do Mar (Sea Beast)
Satix.AutoSeaBeastEvent = true

spawn(function()
    while Satix.AutoSeaBeastEvent do
        local seaBeast = workspace:FindFirstChild("SeaBeast")
        if seaBeast then
            teleportTo(seaBeast.HumanoidRootPart.CFrame)
        end
        task.wait(15)
    end
end)

-- Parte 49: Auto Coleta de Materiais (Items)
Satix.AutoCollectMaterials = true

spawn(function()
    while Satix.AutoCollectMaterials do
        for _, material in pairs(workspace:GetChildren()) do
            if material:IsA("Model") and material.Name == "Material" then
                teleportTo(material.CFrame)
            end
        end
        task.wait(10)
    end
end)

-- Parte 50: Auto Haki do Busoshoku (V1 e V2)
Satix.AutoBusoshokuHakiV1 = true
Satix.AutoBusoshokuHakiV2 = true

spawn(function()
    while Satix.AutoBusoshokuHakiV1 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateBusoshokuHakiV1")
        task.wait(7)
    end
    while Satix.AutoBusoshokuHakiV2 do
        ReplicatedStorage.Remotes.CommF_:InvokeServer("ActivateBusoshokuHakiV2")
        task.wait(12)
    end
end)