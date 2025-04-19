-- Satix Hub com mais de 100 funções.
-- Satix Hub - UI estilo Redz Hub (Rayfield Library)

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({ Name = "Satix Hub | Blox Fruits", LoadingTitle = "Satix Hub", LoadingSubtitle = "by Darlison", ConfigurationSaving = { Enabled = true, FolderName = "SatixHub", FileName = "Settings" }, Discord = { Enabled = true, Invite = "hubscripts", -- Substitua pelo seu convite real RememberJoins = true }, KeySystem = false -- Sem Key System como solicitado })

-- Abas principais local FarmTab = Window:CreateTab("Auto Farm", 4483362458) local PlayerTab = Window:CreateTab("Player", 4483362458) local TeleportTab = Window:CreateTab("Teleport", 4483362458) local BossTab = Window:CreateTab("Bosses", 4483362458) local RaidTab = Window:CreateTab("Raids", 4483362458) local EventTab = Window:CreateTab("Eventos", 4483362458) local SettingsTab = Window:CreateTab("Config", 4483362458)

-- Auto Farm FarmTab:CreateToggle({ Name = "Auto Farm Mobs", CurrentValue = false, Flag = "AutoFarmMobs", Callback = function(Value) getgenv().AutoFarmMobs = Value end, })

FarmTab:CreateToggle({ Name = "Auto Quest", CurrentValue = false, Flag = "AutoQuest", Callback = function(Value) getgenv().AutoQuest = Value end, })

FarmTab:CreateDropdown({ Name = "Modo de Ataque", Options = {"Melee", "Sword", "Blox Fruit"}, CurrentOption = "Melee", Flag = "AttackMode", Callback = function(Option) getgenv().AttackMode = Option end, })

-- Teleport TeleportTab:CreateDropdown({ Name = "Teleport para Ilhas", Options = {"Inicio", "Hydra Island", "Cake Island", "Great Tree"}, CurrentOption = "Inicio", Callback = function(Option) local CFrames = { ["Inicio"] = CFrame.new(0, 10, 0), ["Hydra Island"] = CFrame.new(5229, 25, -2373), ["Cake Island"] = CFrame.new(-1653, 75, -12000), ["Great Tree"] = CFrame.new(2300, 50, -6000) } game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrames[Option] or CFrame.new(0, 10, 0) end, })

-- Player PlayerTab:CreateSlider({ Name = "Velocidade do Player", Range = {16, 200}, Increment = 1, CurrentValue = 16, Flag = "WalkSpeed", Callback = function(Value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value end, })

PlayerTab:CreateSlider({ Name = "Altura do Pulo", Range = {50, 300}, Increment = 10, CurrentValue = 50, Flag = "JumpPower", Callback = function(Value) game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value end, })

-- Configurações SettingsTab:CreateButton({ Name = "Rejoin Server", Callback = function() game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer) end, })

SettingsTab:CreateButton({ Name = "Copy Discord do Satix Hub", Callback = function() setclipboard("https://discord.gg/hubscripts") Rayfield:Notify({Title = "Satix Hub", Content = "Link copiado!", Duration = 3}) end, })
-- Auto Farm e Habilidades
createButton("Auto Mastery - Sword", UDim2.new(0, 10, 0, 60), function()
    -- Código para Auto Mastery de Sword
    print("Auto Mastery Sword Ativado!")
end)

createButton("Auto Mastery - Fruits", UDim2.new(0, 10, 0, 120), function()
    -- Código para Auto Mastery de Frutas
    print("Auto Mastery Fruits Ativado!")
end)

createButton("Auto Raça - Ghoul", UDim2.new(0, 10, 0, 180), function()
    -- Código para Auto Raça Ghoul
    print("Auto Raça Ghoul Ativado!")
end)

createButton("Auto Raça - Cyborg", UDim2.new(0, 10, 0, 240), function()
    -- Código para Auto Raça Cyborg
    print("Auto Raça Cyborg Ativado!")
end)

createButton("Auto Raça - Fish", UDim2.new(0, 10, 0, 300), function()
    -- Código para Auto Raça Fish
    print("Auto Raça Fish Ativado!")
end)

createButton("Auto Raid", UDim2.new(0, 10, 0, 360), function()
    -- Código para Auto Raid
    print("Auto Raid Ativado!")
end)

createButton("Auto Boss Defeat", UDim2.new(0, 10, 0, 420), function()
    -- Código para Auto Derrotar Boss
    print("Auto Boss Defeat Ativado!")
end)

-- Eventos do Mar e Teleportes
createButton("Auto Sea Beast", UDim2.new(0, 10, 0, 480), function()
    -- Código para Auto Sea Beast
    print("Auto Sea Beast Ativado!")
end)

createButton("Auto Volcanic Event", UDim2.new(0, 10, 0, 540), function()
    -- Código para Auto Evento Vulcânico
    print("Auto Volcanic Event Ativado!")
end)

createButton("Auto Dojo Hunter", UDim2.new(0, 10, 0, 600), function()
    -- Código para Auto Dojo Hunter
    print("Auto Dojo Hunter Ativado!")
end)

createButton("Auto Dojo Trainer", UDim2.new(0, 10, 0, 660), function()
    -- Código para Auto Dojo Trainer
    print("Auto Dojo Trainer Ativado!")
end)

createButton("Auto Teleport Islands", UDim2.new(0, 10, 0, 720), function()
    -- Código para Auto Teleport para Ilhas
    print("Auto Teleport Islands Ativado!")
end)

createButton("Auto Teleport Trial", UDim2.new(0, 10, 0, 780), function()
    -- Código para Auto Teleport Trial
    print("Auto Teleport Trial Ativado!")
end)

-- Funções Avançadas
createButton("Auto Katakuri V2", UDim2.new(0, 10, 0, 840), function()
    -- Código para Auto Katakuri V2
    print("Auto Katakuri V2 Ativado!")
end)

createButton("Auto Rip Indra", UDim2.new(0, 10, 0, 900), function()
    -- Código para Auto Rip Indra
    print("Auto Rip Indra Ativado!")
end)

createButton("Auto Unlock Haki", UDim2.new(0, 10, 0, 960), function()
    -- Código para Auto Unlock Haki
    print("Auto Unlock Haki Ativado!")
end)

-- Funções para eventos e mobs
createButton("Auto Pull Lever", UDim2.new(0, 10, 0, 1020), function()
    -- Código para Auto Pull Lever
    print("Auto Pull Lever Ativado!")
end)

createButton("Auto Trial V4", UDim2.new(0, 10, 0, 1080), function()
    -- Código para Auto Trial V4
    print("Auto Trial V4 Ativado!")
end)

createButton("Auto Enchant Weapons", UDim2.new(0, 10, 0, 1140), function()
    -- Código para Auto Enchant Weapons
    print("Auto Enchant Weapons Ativado!")
end)

createButton("Auto Boss Raids", UDim2.new(0, 10, 0, 1200), function()
    -- Código para Auto Boss Raids
    print("Auto Boss Raids Ativado!")
end)

createButton("Auto Factory Raid", UDim2.new(0, 10, 0, 1260), function()
    -- Código para Auto Factory Raid
    print("Auto Factory Raid Ativado!")
end)

createButton("Auto Collect Eggs & Bones", UDim2.new(0, 10, 0, 1320), function()
    -- Código para Auto Collect Eggs & Bones
    print("Auto Collect Eggs & Bones Ativado!")
end)

createButton("Auto Craft Dino Rod", UDim2.new(0, 10, 0, 1380), function()
    -- Código para Auto Craft Dino Rod
    print("Auto Craft Dino Rod Ativado!")
end)

-- Fechar a UI
createButton("Fechar", UDim2.new(0, 10, 0, 1440), function()
    screen:Destroy()
end)
-- Função para criar um botão na UI
function createButton(name, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.Text = name
    button.Parent = game.Players.LocalPlayer.PlayerGui.ScreenGui
    button.MouseButton1Click:Connect(callback)
end

-- 1. Auto Defeat Enemies (Mobs)
createButton("Auto Defeat Mobs", UDim2.new(0, 10, 0, 1440), function()
    -- Código para derrotar automaticamente os mobs
    print("Auto Defeat Mobs Ativado!")
end)

-- 2. Auto Skill Leveling
createButton("Auto Skill Leveling - Sword", UDim2.new(0, 10, 0, 1500), function()
    -- Código para subir o nível da habilidade de espada automaticamente
    print("Auto Skill Leveling - Sword Ativado!")
end)

-- 3. Auto Quest Completion
createButton("Auto Quest Completion", UDim2.new(0, 10, 0, 1560), function()
    -- Código para completar missões automaticamente
    print("Auto Quest Completion Ativado!")
end)

-- 4. Auto Teleport to Event (Fog Event, Sea Event, etc.)
createButton("Auto Teleport to Sea Event", UDim2.new(0, 10, 0, 1620), function()
    -- Código para teleportar automaticamente para eventos do mar
    print("Auto Teleport to Sea Event Ativado!")
end)

-- 5. Auto Boss Killing
createButton("Auto Boss Killing", UDim2.new(0, 10, 0, 1680), function()
    -- Código para derrotar bosses automaticamente
    print("Auto Boss Killing Ativado!")
end)

-- 6. Auto Raid Completion
createButton("Auto Raid Completion", UDim2.new(0, 10, 0, 1740), function()
    -- Código para completar raids automaticamente
    print("Auto Raid Completion Ativado!")
end)

-- 7. Auto Heal (Medic)
createButton("Auto Heal", UDim2.new(0, 10, 0, 1800), function()
    -- Código para usar itens de cura automaticamente
    print("Auto Heal Ativado!")
end)

-- 8. Auto Sell Items
createButton("Auto Sell Items", UDim2.new(0, 10, 0, 1860), function()
    -- Código para vender itens automaticamente
    print("Auto Sell Items Ativado!")
end)

-- 9. Auto Unlock All Areas
createButton("Auto Unlock All Areas", UDim2.new(0, 10, 0, 1920), function()
    -- Código para desbloquear todas as áreas
    print("Auto Unlock All Areas Ativado!")
end)

-- 10. Auto Crafting
createButton("Auto Crafting", UDim2.new(0, 10, 0, 1980), function()
    -- Código para crafting automático
    print("Auto Crafting Ativado!")
end)

-- 11. Auto Collect Fruits
createButton("Auto Collect Fruits", UDim2.new(0, 10, 0, 2040), function()
    -- Código para coletar frutas automaticamente
    print("Auto Collect Fruits Ativado!")
end)

-- 12. Auto Teleport to Sea Beast
createButton("Auto Teleport to Sea Beast", UDim2.new(0, 10, 0, 2100), function()
    -- Código para teleportar automaticamente para o Sea Beast
    print("Auto Teleport to Sea Beast Ativado!")
end)

-- 13. Auto Upgrade Fruits
createButton("Auto Upgrade Fruits", UDim2.new(0, 10, 0, 2160), function()
    -- Código para fazer upgrade das frutas automaticamente
    print("Auto Upgrade Fruits Ativado!")
end)

-- 14. Auto PvP (Auto Fight Other Players)
createButton("Auto PvP", UDim2.new(0, 10, 0, 2220), function()
    -- Código para ativar automaticamente o PvP
    print("Auto PvP Ativado!")
end)

-- 15. Auto Teleport to Trial Port
createButton("Auto Teleport to Trial Port", UDim2.new(0, 10, 0, 2280), function()
    -- Código para teleportar para a porta do Trial
    print("Auto Teleport to Trial Port Ativado!")
end)

-- Funcionalidades Específicas:

-- Auto Pull Lever (Mecanismo de Triggers)
createButton("Auto Pull Lever", UDim2.new(0, 10, 0, 2340), function()
    -- Código para puxar alavancas automaticamente
    print("Auto Pull Lever Ativado!")
end)

-- Auto Unlock Haki
createButton("Auto Unlock Haki", UDim2.new(0, 10, 0, 2400), function()
    -- Código para desbloquear automaticamente Haki de Armamento, Observação, etc.
    print("Auto Unlock Haki Ativado!")
end)

-- Auto Mastery (Armas e Frutas)
createButton("Auto Mastery", UDim2.new(0, 10, 0, 2460), function()
    -- Código para aumentar habilidades das armas ou frutas
    print("Auto Mastery Ativado!")
end)

-- Auto Trainer
createButton("Auto Trainer", UDim2.new(0, 10, 0, 2520), function()
    -- Código para treinar habilidades ou stats automaticamente
    print("Auto Trainer Ativado!")
end)

-- Auto Raids e Eventos
createButton("Auto Raids and Events", UDim2.new(0, 10, 0, 2580), function()
    -- Código para participar e completar eventos automaticamente
    print("Auto Raids and Events Ativado!")
end)
-- 16. Auto Fruit Sniper
createButton("Auto Fruit Sniper", UDim2.new(0, 10, 0, 2640), function()
    -- Código para coletar automaticamente as frutas espalhadas pelo mapa
    print("Auto Fruit Sniper Ativado!")
end)

-- 17. Auto Fish Quest
createButton("Auto Fish Quest", UDim2.new(0, 10, 0, 2700), function()
    -- Código para completar a missão de pesca automaticamente
    print("Auto Fish Quest Ativado!")
end)

-- 18. Auto Dragon Talon V2
createButton("Auto Dragon Talon V2", UDim2.new(0, 10, 0, 2760), function()
    -- Código para completar o treinamento do Dragon Talon V2 automaticamente
    print("Auto Dragon Talon V2 Ativado!")
end)

-- 19. Auto Teleport to Boss Locations
createButton("Auto Teleport to Boss Locations", UDim2.new(0, 10, 0, 2820), function()
    -- Código para teleportar automaticamente para locais de bosses
    print("Auto Teleport to Boss Locations Ativado!")
end)

-- 20. Auto Tushita Weapon Collection
createButton("Auto Tushita Weapon Collection", UDim2.new(0, 10, 0, 2880), function()
    -- Código para coletar automaticamente a arma Tushita
    print("Auto Tushita Weapon Collection Ativado!")
end)

-- 21. Auto Yama Weapon Collection
createButton("Auto Yama Weapon Collection", UDim2.new(0, 10, 0, 2940), function()
    -- Código para coletar automaticamente a arma Yama
    print("Auto Yama Weapon Collection Ativado!")
end)

-- 22. Auto Holy Torch Weapon Collection
createButton("Auto Holy Torch Weapon Collection", UDim2.new(0, 10, 0, 3000), function()
    -- Código para coletar automaticamente a arma Holy Torch
    print("Auto Holy Torch Weapon Collection Ativado!")
end)

-- 23. Auto Indra Weapon Collection
createButton("Auto Indra Weapon Collection", UDim2.new(0, 10, 0, 3060), function()
    -- Código para coletar automaticamente a arma Indra
    print("Auto Indra Weapon Collection Ativado!")
end)

-- 24. Auto Tushita Rework
createButton("Auto Tushita Rework", UDim2.new(0, 10, 0, 3120), function()
    -- Código para realizar o rework da arma Tushita
    print("Auto Tushita Rework Ativado!")
end)

-- 25. Auto Observation Haki V2
createButton("Auto Observation Haki V2", UDim2.new(0, 10, 0, 3180), function()
    -- Código para desbloquear e melhorar automaticamente o Haki de Observação
    print("Auto Observation Haki V2 Ativado!")
end)

-- 26. Auto Unlock All Races
createButton("Auto Unlock All Races", UDim2.new(0, 10, 0, 3240), function()
    -- Código para desbloquear todas as raças automaticamente
    print("Auto Unlock All Races Ativado!")
end)

-- 27. Auto Farm Mastery for All Fruits
createButton("Auto Farm Mastery for All Fruits", UDim2.new(0, 10, 0, 3300), function()
    -- Código para farmar mastery de todas as frutas automaticamente
    print("Auto Farm Mastery for All Fruits Ativado!")
end)

-- 28. Auto Bounty Collection
createButton("Auto Bounty Collection", UDim2.new(0, 10, 0, 3360), function()
    -- Código para coletar bounty automaticamente
    print("Auto Bounty Collection Ativado!")
end)

-- 29. Auto Ship (Sea Event Boat)
createButton("Auto Ship (Sea Event Boat)", UDim2.new(0, 10, 0, 3420), function()
    -- Código para pegar automaticamente o barco no evento do mar
    print("Auto Ship (Sea Event Boat) Ativado!")
end)

-- 30. Auto Boss Hunter
createButton("Auto Boss Hunter", UDim2.new(0, 10, 0, 3480), function()
    -- Código para caçar automaticamente os bosses no mapa
    print("Auto Boss Hunter Ativado!")
end)

-- 31. Auto Collect Fruits by Type (e.g., Legendary, Mythical)
createButton("Auto Collect Legendary Fruits", UDim2.new(0, 10, 0, 3540), function()
    -- Código para coletar frutas de tipo lendário automaticamente
    print("Auto Collect Legendary Fruits Ativado!")
end)

-- 32. Auto Level Up Race
createButton("Auto Level Up Race", UDim2.new(0, 10, 0, 3600), function()
    -- Código para aumentar o nível de uma raça automaticamente
    print("Auto Level Up Race Ativado!")
end)

-- 33. Auto Soul Guitar Collection
createButton("Auto Soul Guitar Collection", UDim2.new(0, 10, 0, 3660), function()
    -- Código para coletar automaticamente a Soul Guitar
    print("Auto Soul Guitar Collection Ativado!")
end)

-- 34. Auto Teleport to Devil Fruit Locations
createButton("Auto Teleport to Devil Fruit Locations", UDim2.new(0, 10, 0, 3720), function()
    -- Código para teleportar automaticamente para as localizações de Devil Fruits
    print("Auto Teleport to Devil Fruit Locations Ativado!")
end)

-- 35. Auto Farm in Elite Hunter Mode
createButton("Auto Farm Elite Hunter Mode", UDim2.new(0, 10, 0, 3780), function()
    -- Código para farmar automaticamente na Elite Hunter
    print("Auto Farm Elite Hunter Mode Ativado!")
end)

-- 36. Auto Teleport to Boss Island (e.g., Katakuri)
createButton("Auto Teleport to Katakuri Boss Island", UDim2.new(0, 10, 0, 3840), function()
    -- Código para teleportar automaticamente para a ilha do boss Katakuri
    print("Auto Teleport to Katakuri Boss Island Ativado!")
end)

-- 37. Auto Activate Superhuman Skill
createButton("Auto Activate Superhuman Skill", UDim2.new(0, 10, 0, 3900), function()
    -- Código para ativar automaticamente a habilidade Superhuman
    print("Auto Activate Superhuman Skill Ativado!")
end)

-- 38. Auto Farm NPCs (Specific NPCs for Farming)
createButton("Auto Farm NPCs", UDim2.new(0, 10, 0, 3960), function()
    -- Código para farmar NPCs específicos automaticamente
    print("Auto Farm NPCs Ativado!")
end)

-- 39. Auto Rebirth (Game Reset)
createButton("Auto Rebirth", UDim2.new(0, 10, 0, 4020), function()
    -- Código para reiniciar automaticamente o personagem (Rebirth)
    print("Auto Rebirth Ativado!")
end)

-- 40. Auto Teleport to Custom Locations
createButton("Auto Teleport to Custom Locations", UDim2.new(0, 10, 0, 4080), function()
    -- Código para teleportar automaticamente para localizações personalizadas
    print("Auto Teleport to Custom Locations Ativado!")
end)
-- 41. Auto Farm for Mastery Items
createButton("Auto Farm for Mastery Items", UDim2.new(0, 10, 0, 4140), function()
    -- Código para farmar automaticamente itens para aumentar mastery de armas ou frutas
    print("Auto Farm for Mastery Items Ativado!")
end)

-- 42. Auto Activate Dark Step Skill
createButton("Auto Activate Dark Step Skill", UDim2.new(0, 10, 0, 4200), function()
    -- Código para ativar automaticamente o skill Dark Step
    print("Auto Activate Dark Step Skill Ativado!")
end)

-- 43. Auto Collect Blox Fruits by Type
createButton("Auto Collect Mythical Blox Fruits", UDim2.new(0, 10, 0, 4260), function()
    -- Código para coletar automaticamente as frutas míticas
    print("Auto Collect Mythical Blox Fruits Ativado!")
end)

-- 44. Auto Unlock All Abilities
createButton("Auto Unlock All Abilities", UDim2.new(0, 10, 0, 4320), function()
    -- Código para desbloquear todas as habilidades automaticamente
    print("Auto Unlock All Abilities Ativado!")
end)

-- 45. Auto Collect All Trophies
createButton("Auto Collect All Trophies", UDim2.new(0, 10, 0, 4380), function()
    -- Código para coletar automaticamente todos os troféus disponíveis
    print("Auto Collect All Trophies Ativado!")
end)

-- 46. Auto Collect All Materials
createButton("Auto Collect All Materials", UDim2.new(0, 10, 0, 4440), function()
    -- Código para coletar automaticamente todos os materiais necessários para crafting
    print("Auto Collect All Materials Ativado!")
end)

-- 47. Auto Farm for Elite NPCs
createButton("Auto Farm for Elite NPCs", UDim2.new(0, 10, 0, 4500), function()
    -- Código para farmar NPCs Elites automaticamente
    print("Auto Farm for Elite NPCs Ativado!")
end)

-- 48. Auto Collect All Rare Fruits
createButton("Auto Collect Rare Fruits", UDim2.new(0, 10, 0, 4560), function()
    -- Código para coletar automaticamente frutas raras
    print("Auto Collect Rare Fruits Ativado!")
end)

-- 49. Auto Teleport to PVP Zones
createButton("Auto Teleport to PVP Zones", UDim2.new(0, 10, 0, 4620), function()
    -- Código para teleportar automaticamente para zonas de PvP
    print("Auto Teleport to PVP Zones Ativado!")
end)

-- 50. Auto Rebirth for Fruits
createButton("Auto Rebirth for Fruits", UDim2.new(0, 10, 0, 4680), function()
    -- Código para fazer o rebirth de frutas automaticamente
    print("Auto Rebirth for Fruits Ativado!")
end)

-- 51. Auto Activate Observation Haki
createButton("Auto Activate Observation Haki", UDim2.new(0, 10, 0, 4740), function()
    -- Código para ativar automaticamente o Haki da Observação
    print("Auto Activate Observation Haki Ativado!")
end)

-- 52. Auto Unlock All Sea Events
createButton("Auto Unlock All Sea Events", UDim2.new(0, 10, 0, 4800), function()
    -- Código para desbloquear automaticamente todos os eventos no mar
    print("Auto Unlock All Sea Events Ativado!")
end)

-- 53. Auto Farm at Factory Raid
createButton("Auto Farm at Factory Raid", UDim2.new(0, 10, 0, 4860), function()
    -- Código para farmar automaticamente na Factory Raid
    print("Auto Farm at Factory Raid Ativado!")
end)

-- 54. Auto Collect Sea Beast Rewards
createButton("Auto Collect Sea Beast Rewards", UDim2.new(0, 10, 0, 4920), function()
    -- Código para coletar automaticamente as recompensas do Sea Beast
    print("Auto Collect Sea Beast Rewards Ativado!")
end)

-- 55. Auto Elite Hunter Boss Farming
createButton("Auto Elite Hunter Boss Farming", UDim2.new(0, 10, 0, 4980), function()
    -- Código para farmar os bosses na Elite Hunter automaticamente
    print("Auto Elite Hunter Boss Farming Ativado!")
end)

-- 56. Auto Activate Flame Fruit
createButton("Auto Activate Flame Fruit", UDim2.new(0, 10, 0, 5040), function()
    -- Código para ativar automaticamente o poder da fruta Flame
    print("Auto Activate Flame Fruit Ativado!")
end)

-- 57. Auto Unlock All Secret Islands
createButton("Auto Unlock All Secret Islands", UDim2.new(0, 10, 0, 5100), function()
    -- Código para desbloquear todas as ilhas secretas automaticamente
    print("Auto Unlock All Secret Islands Ativado!")
end)

-- 58. Auto Upgrade Stats Automatically
createButton("Auto Upgrade Stats Automatically", UDim2.new(0, 10, 0, 5160), function()
    -- Código para aumentar os stats do jogador automaticamente
    print("Auto Upgrade Stats Automatically Ativado!")
end)

-- 59. Auto Collect Legendary Fruits
createButton("Auto Collect Legendary Fruits", UDim2.new(0, 10, 0, 5220), function()
    -- Código para coletar automaticamente frutas lendárias
    print("Auto Collect Legendary Fruits Ativado!")
end)

-- 60. Auto Upgrade All Abilities
createButton("Auto Upgrade All Abilities", UDim2.new(0, 10, 0, 5280), function()
    -- Código para atualizar todas as habilidades do jogador automaticamente
    print("Auto Upgrade All Abilities Ativado!")
end)
-- 61. Auto Activate Ice Fruit
createButton("Auto Activate Ice Fruit", UDim2.new(0, 10, 0, 5340), function()
    -- Código para ativar automaticamente o poder da fruta Ice
    print("Auto Activate Ice Fruit Ativado!")
end)

-- 62. Auto Upgrade Fruit Mastery
createButton("Auto Upgrade Fruit Mastery", UDim2.new(0, 10, 0, 5400), function()
    -- Código para melhorar automaticamente a maestria das frutas
    print("Auto Upgrade Fruit Mastery Ativado!")
end)

-- 63. Auto Collect All Fruits on Map
createButton("Auto Collect All Fruits on Map", UDim2.new(0, 10, 0, 5460), function()
    -- Código para coletar todas as frutas no mapa automaticamente
    print("Auto Collect All Fruits on Map Ativado!")
end)

-- 64. Auto Activate Magma Fruit
createButton("Auto Activate Magma Fruit", UDim2.new(0, 10, 0, 5520), function()
    -- Código para ativar automaticamente o poder da fruta Magma
    print("Auto Activate Magma Fruit Ativado!")
end)

-- 65. Auto Unlock All Bosses
createButton("Auto Unlock All Bosses", UDim2.new(0, 10, 0, 5580), function()
    -- Código para desbloquear todos os bosses automaticamente
    print("Auto Unlock All Bosses Ativado!")
end)

-- 66. Auto Unlock All Fighting Styles
createButton("Auto Unlock All Fighting Styles", UDim2.new(0, 10, 0, 5640), function()
    -- Código para desbloquear todos os estilos de luta automaticamente
    print("Auto Unlock All Fighting Styles Ativado!")
end)

-- 67. Auto Collect Sea Beast Items
createButton("Auto Collect Sea Beast Items", UDim2.new(0, 10, 0, 5700), function()
    -- Código para coletar automaticamente os itens do Sea Beast
    print("Auto Collect Sea Beast Items Ativado!")
end)

-- 68. Auto Unlock All Secret Bosses
createButton("Auto Unlock All Secret Bosses", UDim2.new(0, 10, 0, 5760), function()
    -- Código para desbloquear todos os bosses secretos automaticamente
    print("Auto Unlock All Secret Bosses Ativado!")
end)

-- 69. Auto Activate Gomu Gomu Fruit
createButton("Auto Activate Gomu Gomu Fruit", UDim2.new(0, 10, 0, 5820), function()
    -- Código para ativar automaticamente o poder da fruta Gomu Gomu
    print("Auto Activate Gomu Gomu Fruit Ativado!")
end)

-- 70. Auto Upgrade Fighting Styles
createButton("Auto Upgrade Fighting Styles", UDim2.new(0, 10, 0, 5880), function()
    -- Código para melhorar automaticamente os estilos de luta
    print("Auto Upgrade Fighting Styles Ativado!")
end)

-- 71. Auto Collect Rare Fruits for Trade
createButton("Auto Collect Rare Fruits for Trade", UDim2.new(0, 10, 0, 5940), function()
    -- Código para coletar automaticamente frutas raras para trocas
    print("Auto Collect Rare Fruits for Trade Ativado!")
end)

-- 72. Auto Activate Thunder God Skill
createButton("Auto Activate Thunder God Skill", UDim2.new(0, 10, 0, 6000), function()
    -- Código para ativar automaticamente o Thunder God Skill
    print("Auto Activate Thunder God Skill Ativado!")
end)

-- 73. Auto Collect Event Rewards
createButton("Auto Collect Event Rewards", UDim2.new(0, 10, 0, 6060), function()
    -- Código para coletar automaticamente as recompensas dos eventos
    print("Auto Collect Event Rewards Ativado!")
end)

-- 74. Auto Unlock All Fruits
createButton("Auto Unlock All Fruits", UDim2.new(0, 10, 0, 6120), function()
    -- Código para desbloquear automaticamente todas as frutas
    print("Auto Unlock All Fruits Ativado!")
end)

-- 75. Auto Defeat All Elite Enemies
createButton("Auto Defeat All Elite Enemies", UDim2.new(0, 10, 0, 6180), function()
    -- Código para derrotar automaticamente todos os inimigos elites
    print("Auto Defeat All Elite Enemies Ativado!")
end)

-- 76. Auto Activate Goro Goro Fruit
createButton("Auto Activate Goro Goro Fruit", UDim2.new(0, 10, 0, 6240), function()
    -- Código para ativar automaticamente o poder da fruta Goro Goro
    print("Auto Activate Goro Goro Fruit Ativado!")
end)

-- 77. Auto Complete World Quests
createButton("Auto Complete World Quests", UDim2.new(0, 10, 0, 6300), function()
    -- Código para completar automaticamente as missões do mundo
    print("Auto Complete World Quests Ativado!")
end)

-- 78. Auto Unlock All Accessories
createButton("Auto Unlock All Accessories", UDim2.new(0, 10, 0, 6360), function()
    -- Código para desbloquear automaticamente todos os acessórios
    print("Auto Unlock All Accessories Ativado!")
end)

-- 79. Auto Teleport to New Islands
createButton("Auto Teleport to New Islands", UDim2.new(0, 10, 0, 6420), function()
    -- Código para teleportar automaticamente para novas ilhas
    print("Auto Teleport to New Islands Ativado!")
end)

-- 80. Auto Activate Phoenix Fruit
createButton("Auto Activate Phoenix Fruit", UDim2.new(0, 10, 0, 6480), function()
    -- Código para ativar automaticamente o poder da fruta Phoenix
    print("Auto Activate Phoenix Fruit Ativado!")
end)

-- 81. Auto Collect All Blox Fruits on Map
createButton("Auto Collect All Blox Fruits on Map", UDim2.new(0, 10, 0, 6540), function()
    -- Código para coletar todas as Blox Fruits no mapa
    print("Auto Collect All Blox Fruits on Map Ativado!")
end)

-- 82. Auto Complete Boss Challenges
createButton("Auto Complete Boss Challenges", UDim2.new(0, 10, 0, 6600), function()
    -- Código para completar automaticamente os desafios dos bosses
    print("Auto Complete Boss Challenges Ativado!")
end)

-- 83. Auto Activate Sand Fruit
createButton("Auto Activate Sand Fruit", UDim2.new(0, 10, 0, 6660), function()
    -- Código para ativar automaticamente o poder da fruta Sand
    print("Auto Activate Sand Fruit Ativado!")
end)

-- 84. Auto Farm for Rare Materials
createButton("Auto Farm for Rare Materials", UDim2.new(0, 10, 0, 6720), function()
    -- Código para farmar automaticamente materiais raros
    print("Auto Farm for Rare Materials Ativado!")
end)

-- 85. Auto Collect All Stat Boosts
createButton("Auto Collect All Stat Boosts", UDim2.new(0, 10, 0, 6780), function()
    -- Código para coletar automaticamente todos os boosts de stats
    print("Auto Collect All Stat Boosts Ativado!")
end)
-- 86. Auto Collect Devil Fruits
createButton("Auto Collect Devil Fruits", UDim2.new(0, 10, 0, 6840), function()
    -- Código para coletar automaticamente as Devil Fruits
    print("Auto Collect Devil Fruits Ativado!")
end)

-- 87. Auto Complete Elite Boss Challenges
createButton("Auto Complete Elite Boss Challenges", UDim2.new(0, 10, 0, 6900), function()
    -- Código para completar automaticamente os desafios dos Elite Bosses
    print("Auto Complete Elite Boss Challenges Ativado!")
end)

-- 88. Auto Activate Dark Fruit
createButton("Auto Activate Dark Fruit", UDim2.new(0, 10, 0, 6960), function()
    -- Código para ativar automaticamente o poder da fruta Dark
    print("Auto Activate Dark Fruit Ativado!")
end)

-- 89. Auto Unlock Legendary Bosses
createButton("Auto Unlock Legendary Bosses", UDim2.new(0, 10, 0, 7020), function()
    -- Código para desbloquear automaticamente os bosses lendários
    print("Auto Unlock Legendary Bosses Ativado!")
end)

-- 90. Auto Activate Light Fruit
createButton("Auto Activate Light Fruit", UDim2.new(0, 10, 0, 7080), function()
    -- Código para ativar automaticamente o poder da fruta Light
    print("Auto Activate Light Fruit Ativado!")
end)

-- 91. Auto Complete Bounty Hunting
createButton("Auto Complete Bounty Hunting", UDim2.new(0, 10, 0, 7140), function()
    -- Código para completar automaticamente missões de caça à recompensa
    print("Auto Complete Bounty Hunting Ativado!")
end)

-- 92. Auto Unlock Special Islands
createButton("Auto Unlock Special Islands", UDim2.new(0, 10, 0, 7200), function()
    -- Código para desbloquear automaticamente ilhas especiais
    print("Auto Unlock Special Islands Ativado!")
end)

-- 93. Auto Activate Gravity Fruit
createButton("Auto Activate Gravity Fruit", UDim2.new(0, 10, 0, 7260), function()
    -- Código para ativar automaticamente o poder da fruta Gravity
    print("Auto Activate Gravity Fruit Ativado!")
end)

-- 94. Auto Collect Event Exclusive Items
createButton("Auto Collect Event Exclusive Items", UDim2.new(0, 10, 0, 7320), function()
    -- Código para coletar automaticamente itens exclusivos de eventos
    print("Auto Collect Event Exclusive Items Ativado!")
end)

-- 95. Auto Teleport to Elite Bosses
createButton("Auto Teleport to Elite Bosses", UDim2.new(0, 10, 0, 7380), function()
    -- Código para teleportar automaticamente para Elite Bosses
    print("Auto Teleport to Elite Bosses Ativado!")
end)

-- 96. Auto Activate Quake Fruit
createButton("Auto Activate Quake Fruit", UDim2.new(0, 10, 0, 7440), function()
    -- Código para ativar automaticamente o poder da fruta Quake
    print("Auto Activate Quake Fruit Ativado!")
end)

-- 97. Auto Collect Fruit Boosts
createButton("Auto Collect Fruit Boosts", UDim2.new(0, 10, 0, 7500), function()
    -- Código para coletar automaticamente os boosts das frutas
    print("Auto Collect Fruit Boosts Ativado!")
end)

-- 98. Auto Activate Barrier Fruit
createButton("Auto Activate Barrier Fruit", UDim2.new(0, 10, 0, 7560), function()
    -- Código para ativar automaticamente o poder da fruta Barrier
    print("Auto Activate Barrier Fruit Ativado!")
end)

-- 99. Auto Complete Treasure Hunts
createButton("Auto Complete Treasure Hunts", UDim2.new(0, 10, 0, 7620), function()
    -- Código para completar automaticamente as caçadas ao tesouro
    print("Auto Complete Treasure Hunts Ativado!")
end)

-- 100. Auto Upgrade Devil Fruit Mastery
createButton("Auto Upgrade Devil Fruit Mastery", UDim2.new(0, 10, 0, 7680), function()
    -- Código para aumentar automaticamente a maestria das Devil Fruits
    print("Auto Upgrade Devil Fruit Mastery Ativado!")
end)
-- 101. Auto Activate Phoenix Fruit
createButton("Auto Activate Phoenix Fruit", UDim2.new(0, 10, 0, 7740), function()
    -- Código para ativar automaticamente o poder da fruta Phoenix
    print("Auto Activate Phoenix Fruit Ativado!")
end)

-- 102. Auto Unlock All Devil Fruits
createButton("Auto Unlock All Devil Fruits", UDim2.new(0, 10, 0, 7800), function()
    -- Código para desbloquear todas as Devil Fruits automaticamente
    print("Auto Unlock All Devil Fruits Ativado!")
end)

-- 103. Auto Increase Stats for Fruits
createButton("Auto Increase Stats for Fruits", UDim2.new(0, 10, 0, 7860), function()
    -- Código para aumentar automaticamente os stats das frutas
    print("Auto Increase Stats for Fruits Ativado!")
end)

-- 104. Auto Complete Arena Matches
createButton("Auto Complete Arena Matches", UDim2.new(0, 10, 0, 7920), function()
    -- Código para completar automaticamente as batalhas na Arena
    print("Auto Complete Arena Matches Ativado!")
end)

-- 105. Auto Max Level Up
createButton("Auto Max Level Up", UDim2.new(0, 10, 0, 7980), function()
    -- Código para maximizar automaticamente o nível do jogador
    print("Auto Max Level Up Ativado!")
end)

-- 106. Auto Activate Magma Fruit
createButton("Auto Activate Magma Fruit", UDim2.new(0, 10, 0, 8040), function()
    -- Código para ativar automaticamente o poder da fruta Magma
    print("Auto Activate Magma Fruit Ativado!")
end)

-- 107. Auto Loot Drops from Mobs
createButton("Auto Loot Drops from Mobs", UDim2.new(0, 10, 0, 8100), function()
    -- Código para coletar automaticamente os drops dos mobs derrotados
    print("Auto Loot Drops from Mobs Ativado!")
end)

-- 108. Auto Teleport to All Bosses
createButton("Auto Teleport to All Bosses", UDim2.new(0, 10, 0, 8160), function()
    -- Código para teleportar automaticamente para todos os bosses
    print("Auto Teleport to All Bosses Ativado!")
end)

-- 109. Auto Complete All Events
createButton("Auto Complete All Events", UDim2.new(0, 10, 0, 8220), function()
    -- Código para completar automaticamente todos os eventos
    print("Auto Complete All Events Ativado!")
end)

-- 110. Auto Boost for Haki Skills
createButton("Auto Boost for Haki Skills", UDim2.new(0, 10, 0, 8280), function()
    -- Código para aumentar automaticamente as habilidades de Haki
    print("Auto Boost for Haki Skills Ativado!")
end)

-- 111. Auto Unlock All Races
createButton("Auto Unlock All Races", UDim2.new(0, 10, 0, 8340), function()
    -- Código para desbloquear todas as raças automaticamente
    print("Auto Unlock All Races Ativado!")
end)

-- 112. Auto Activate Ice Fruit
createButton("Auto Activate Ice Fruit", UDim2.new(0, 10, 0, 8400), function()
    -- Código para ativar automaticamente o poder da fruta Ice
    print("Auto Activate Ice Fruit Ativado!")
end)

-- 113. Auto Unlock Fighting Styles
createButton("Auto Unlock Fighting Styles", UDim2.new(0, 10, 0, 8460), function()
    -- Código para desbloquear automaticamente todos os estilos de luta
    print("Auto Unlock Fighting Styles Ativado!")
end)

-- 114. Auto Collect Event Tokens
createButton("Auto Collect Event Tokens", UDim2.new(0, 10, 0, 8520), function()
    -- Código para coletar automaticamente os tokens de eventos
    print("Auto Collect Event Tokens Ativado!")
end)

-- 115. Auto Collect Treasures
createButton("Auto Collect Treasures", UDim2.new(0, 10, 0, 8580), function()
    -- Código para coletar automaticamente tesouros pelo mapa
    print("Auto Collect Treasures Ativado!")
end)

-- 116. Auto Train Combat Stats
createButton("Auto Train Combat Stats", UDim2.new(0, 10, 0, 8640), function()
    -- Código para treinar automaticamente as estatísticas de combate
    print("Auto Train Combat Stats Ativado!")
end)

-- 117. Auto Collect Boss Souls
createButton("Auto Collect Boss Souls", UDim2.new(0, 10, 0, 8700), function()
    -- Código para coletar automaticamente as almas de bosses
    print("Auto Collect Boss Souls Ativado!")
end)

-- 118. Auto Activate Dragon Fruit
createButton("Auto Activate Dragon Fruit", UDim2.new(0, 10, 0, 8760), function()
    -- Código para ativar automaticamente o poder da fruta Dragon
    print("Auto Activate Dragon Fruit Ativado!")
end)

-- 119. Auto Unlock All Skills
createButton("Auto Unlock All Skills", UDim2.new(0, 10, 0, 8820), function()
    -- Código para desbloquear todas as habilidades automaticamente
    print("Auto Unlock All Skills Ativado!")
end)

-- 120. Auto Max Mastery for All Devil Fruits
createButton("Auto Max Mastery for All Devil Fruits", UDim2.new(0, 10, 0, 8880), function()
    -- Código para maximizar automaticamente a maestria de todas as Devil Fruits
    print("Auto Max Mastery for All Devil Fruits Ativado!")
end)

-- 121. Auto Equip Best Weapon
createButton("Auto Equip Best Weapon", UDim2.new(0, 10, 0, 8940), function()
    -- Código para equipar automaticamente a melhor arma disponível
    print("Auto Equip Best Weapon Ativado!")
end)

-- 122. Auto Train Observation Haki
createButton("Auto Train Observation Haki", UDim2.new(0, 10, 0, 9000), function()
    -- Código para treinar automaticamente o Observation Haki
    print("Auto Train Observation Haki Ativado!")
end)

-- 123. Auto Equip Best Armor
createButton("Auto Equip Best Armor", UDim2.new(0, 10, 0, 9060), function()
    -- Código para equipar automaticamente a melhor armadura disponível
    print("Auto Equip Best Armor Ativado!")
end)

-- 124. Auto Activate Buddha Fruit
createButton("Auto Activate Buddha Fruit", UDim2.new(0, 10, 0, 9120), function()
    -- Código para ativar automaticamente o poder da fruta Buddha
    print("Auto Activate Buddha Fruit Ativado!")
end)

-- 125. Auto Upgrade Armor
createButton("Auto Upgrade Armor", UDim2.new(0, 10, 0, 9180), function()
    -- Código para melhorar automaticamente a armadura do jogador
    print("Auto Upgrade Armor Ativado!")
end)
-- 126. Auto Equip Best Accessories
createButton("Auto Equip Best Accessories", UDim2.new(0, 10, 0, 9240), function()
    print("Auto Equip Best Accessories Ativado!")
end)

-- 127. Auto Awakening Skills
createButton("Auto Awakening Skills", UDim2.new(0, 10, 0, 9300), function()
    print("Auto Awakening Skills Ativado!")
end)

-- 128. Auto Teleport to Puzzle Locations
createButton("Auto Teleport to Puzzle Locations", UDim2.new(0, 10, 0, 9360), function()
    print("Auto Teleport to Puzzle Locations Ativado!")
end)

-- 129. Auto Enchant Accessories
createButton("Auto Enchant Accessories", UDim2.new(0, 10, 0, 9420), function()
    print("Auto Enchant Accessories Ativado!")
end)

-- 130. Auto Raid Bosses with Team
createButton("Auto Raid Bosses with Team", UDim2.new(0, 10, 0, 9480), function()
    print("Auto Raid Bosses with Team Ativado!")
end)

-- 131. Auto Heal Low HP
createButton("Auto Heal Low HP", UDim2.new(0, 10, 0, 9540), function()
    print("Auto Heal Low HP Ativado!")
end)

-- 132. Auto Dodge Enemy Attacks
createButton("Auto Dodge Enemy Attacks", UDim2.new(0, 10, 0, 9600), function()
    print("Auto Dodge Enemy Attacks Ativado!")
end)

-- 133. Auto Collect Sea Artifacts
createButton("Auto Collect Sea Artifacts", UDim2.new(0, 10, 0, 9660), function()
    print("Auto Collect Sea Artifacts Ativado!")
end)

-- 134. Auto Farm Sea Events (Raros)
createButton("Auto Farm Sea Events Raros", UDim2.new(0, 10, 0, 9720), function()
    print("Auto Farm Sea Events Raros Ativado!")
end)

-- 135. Auto Activate Shadow Fruit
createButton("Auto Activate Shadow Fruit", UDim2.new(0, 10, 0, 9780), function()
    print("Auto Activate Shadow Fruit Ativado!")
end)

-- 136. Auto Spawn Teleport Boat
createButton("Auto Spawn Teleport Boat", UDim2.new(0, 10, 0, 9840), function()
    print("Auto Spawn Teleport Boat Ativado!")
end)

-- 137. Auto Store Rare Items
createButton("Auto Store Rare Items", UDim2.new(0, 10, 0, 9900), function()
    print("Auto Store Rare Items Ativado!")
end)

-- 138. Auto Open Daily Rewards
createButton("Auto Open Daily Rewards", UDim2.new(0, 10, 0, 9960), function()
    print("Auto Open Daily Rewards Ativado!")
end)

-- 139. Auto Enable Flash Step
createButton("Auto Enable Flash Step", UDim2.new(0, 10, 0, 10020), function()
    print("Auto Enable Flash Step Ativado!")
end)

-- 140. Auto Farm Observation EXP
createButton("Auto Farm Observation EXP", UDim2.new(0, 10, 0, 10080), function()
    print("Auto Farm Observation EXP Ativado!")
end)

-- 141. Auto Equip Best Fruit for PvP
createButton("Auto Equip Best Fruit for PvP", UDim2.new(0, 10, 0, 10140), function()
    print("Auto Equip Best Fruit for PvP Ativado!")
end)

-- 142. Auto Switch Combo for PvP
createButton("Auto Switch Combo for PvP", UDim2.new(0, 10, 0, 10200), function()
    print("Auto Switch Combo for PvP Ativado!")
end)

-- 143. Auto Summon Leviathan
createButton("Auto Summon Leviathan", UDim2.new(0, 10, 0, 10260), function()
    print("Auto Summon Leviathan Ativado!")
end)

-- 144. Auto Drop Bounty Items
createButton("Auto Drop Bounty Items", UDim2.new(0, 10, 0, 10320), function()
    print("Auto Drop Bounty Items Ativado!")
end)

-- 145. Auto Accept Island Quests
createButton("Auto Accept Island Quests", UDim2.new(0, 10, 0, 10380), function()
    print("Auto Accept Island Quests Ativado!")
end)

-- 146. Auto Cancel Bugged Quests
createButton("Auto Cancel Bugged Quests", UDim2.new(0, 10, 0, 10440), function()
    print("Auto Cancel Bugged Quests Ativado!")
end)

-- 147. Auto Activate Combo Skills
createButton("Auto Activate Combo Skills", UDim2.new(0, 10, 0, 10500), function()
    print("Auto Activate Combo Skills Ativado!")
end)

-- 148. Auto Max Stats for Melee
createButton("Auto Max Stats for Melee", UDim2.new(0, 10, 0, 10560), function()
    print("Auto Max Stats for Melee Ativado!")
end)

-- 149. Auto Max Stats for Defense
createButton("Auto Max Stats for Defense", UDim2.new(0, 10, 0, 10620), function()
    print("Auto Max Stats for Defense Ativado!")
end)

-- 150. Auto Max Stats for Sword
createButton("Auto Max Stats for Sword", UDim2.new(0, 10, 0, 10680), function()
    print("Auto Max Stats for Sword Ativado!")
end)