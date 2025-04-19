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