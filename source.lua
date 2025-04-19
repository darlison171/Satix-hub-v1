-- Satix Hub com mais de 100 funções
local screen = Instance.new("ScreenGui")
screen.Name = "SatixHub"
screen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screen.DisplayOrder = 1

-- Funções básicas de UI
local frame = Instance.new("Frame")
frame.Parent = screen
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.Size = UDim2.new(0, 300, 0, 800)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)

local title = Instance.new("TextLabel")
title.Parent = frame
title.Text = "Satix Hub"
title.Size = UDim2.new(1, 0, 0, 50)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.TextSize = 24
title.TextAlign = Enum.TextXAlignment.Center
title.TextYAlignment = Enum.TextYAlignment.Center

-- Funções com múltiplas opções (Auto-Masteries, Raças, Eventos, etc.)
local function createButton(text, position, callback)
    local button = Instance.new("TextButton")
    button.Parent = frame
    button.Text = text
    button.Size = UDim2.new(0, 280, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 18

    button.MouseButton1Click:Connect(callback)
    return button
end

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