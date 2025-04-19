-- Satix Hub v1.0 | By Darlison
-- Script sem key, com várias funções automáticas para Blox Fruits

-- Interface básica
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local buttons = {}

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "SatixHubUI"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Position = UDim2.new(0.05, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 250, 0, 500)
Frame.Name = "MainFrame"

UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Função para criar botões
function createButton(text, callback)
    local button = Instance.new("TextButton")
    button.Parent = Frame
    button.Size = UDim2.new(1, -10, 0, 30)
    button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.Text = text
    button.MouseButton1Click:Connect(callback)
    table.insert(buttons, button)
end

-- Exemplo de funções (iremos expandir depois)
createButton("Auto Farm Mobs", function()
    print("Auto Farm Mobs Ativado")
end)

createButton("Auto Boss", function()
    print("Auto Boss Ativado")
end)

createButton("Auto Coletar Frutas", function()
    print("Auto Coleta de Frutas Ativado")
end)
-- SATIX HUB - Funções principais

-- Auto Farm Mobs
createButton("Auto Farm Mobs", UDim2.new(0, 10, 0, 140), function()
    _G.AutoFarmMobs = not _G.AutoFarmMobs
    while _G.AutoFarmMobs do
        pcall(function()
            local Enemy = FindNearestMob()
            if Enemy then
                repeat
                    wait()
                    AttackMob(Enemy)
                until not Enemy or Enemy.Humanoid.Health <= 0 or not _G.AutoFarmMobs
            end
        end)
        wait(0.5)
    end
end)

-- Auto Quest
createButton("Auto Quest", UDim2.new(0, 10, 0, 200), function()
    _G.AutoQuest = not _G.AutoQuest
    while _G.AutoQuest do
        pcall(function()
            if CanTakeQuest() then
                TakeQuest()
            end
        end)
        wait(1)
    end
end)

-- Auto Mastery (Espada)
createButton("Auto Mastery Sword", UDim2.new(0, 10, 0, 260), function()
    _G.AutoMasterySword = not _G.AutoMasterySword
    while _G.AutoMasterySword do
        pcall(function()
            EquipWeapon("Sword")
            AttackNearbyMobs()
        end)
        wait(0.5)
    end
end)

-- Auto Mastery (Fruta)
createButton("Auto Mastery Fruit", UDim2.new(0, 10, 0, 320), function()
    _G.AutoMasteryFruit = not _G.AutoMasteryFruit
    while _G.AutoMasteryFruit do
        pcall(function()
            EquipWeapon("Blox Fruit")
            AttackNearbyMobs()
        end)
        wait(0.5)
    end
end)

-- Auto Haki (Observação e Armamento)
createButton("Auto Activate Haki", UDim2.new(0, 10, 0, 380), function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "J", false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "H", false, game)
end)

-- Auto Teleport para Ilha
createButton("Auto TP Ilha", UDim2.new(0, 10, 0, 440), function()
    TeleportToIsland("StartIsland") -- Substitua com a ilha desejada
end)

-- Auto PVP
createButton("Auto PVP", UDim2.new(0, 10, 0, 500), function()
    _G.AutoPVP = not _G.AutoPVP
    while _G.AutoPVP do
        pcall(function()
            local Target = FindClosestPlayer()
            if Target then AttackPlayer(Target) end
        end)
        wait(0.5)
    end
end)

-- Auto Indra
createButton("Auto Rip Indra", UDim2.new(0, 10, 0, 560), function()
    _G.AutoIndra = not _G.AutoIndra
    while _G.AutoIndra do
        pcall(function()
            if BossAlive("rip_indra") then
                TeleportToBoss("rip_indra")
                AttackBoss("rip_indra")
            else
                HopToNextServer()
            end
        end)
        wait(2)
    end
end)

-- Auto Katakuri V2
createButton("Auto Katakuri V2", UDim2.new(0, 10, 0, 620), function()
    _G.AutoKataV2 = not _G.AutoKataV2
    while _G.AutoKataV2 do
        pcall(function()
            if BossAlive("charlotte_katakuri") then
                TeleportToBoss("charlotte_katakuri")
                AttackBoss("charlotte_katakuri")
            else
                HopToNextServer()
            end
        end)
        wait(2)
    end
end)

-- Auto Sea Event
createButton("Auto Sea Event", UDim2.new(0, 10, 0, 680), function()
    _G.AutoSeaEvent = not _G.AutoSeaEvent
    while _G.AutoSeaEvent do
        pcall(function()
            local Event = FindSeaEvent()
            if Event then
                TeleportToEvent(Event)
            end
        end)
        wait(3)
    end
end)

-- Auto Pull Lever
createButton("Auto Pull Lever", UDim2.new(0, 10, 0, 740), function()
    PullTrialLever()
end)

-- Auto Trial V4
createButton("Auto Ativar Trial V4", UDim2.new(0, 10, 0, 800), function()
    _G.AutoTrial = not _G.AutoTrial
    while _G.AutoTrial do
        AtivarTrialV4()
        wait(5)
    end
end)

-- Auto Craft Dino Rood
createButton("Auto Craft Dino Rood", UDim2.new(0, 10, 0, 860), function()
    CraftItem("Dino Rood")
end)

-- Auto Coleta de Osso e Ovo
createButton("Auto Coleta Osso e Ovo", UDim2.new(0, 10, 0, 920), function()
    ColetarItem("Bone")
    ColetarItem("Egg")
end)

-- Auto Sabre
createButton("Auto Sabre", UDim2.new(0, 10, 0, 980), function()
    AtivarSabreAuto()
end)

-- Auto Unlock Haki
createButton("Auto Haki V1", UDim2.new(0, 10, 0, 1040), function()
    DesbloquearHaki("Observation")
    DesbloquearHaki("Armament")
end)

-- Auto Treinar Desvio
createButton("Auto Treinar Desvio", UDim2.new(0, 10, 0, 1100), function()
    TreinarDesvios()
end)

-- Auto Treinar Raça
createButton("Auto Treinar Raça", UDim2.new(0, 10, 0, 1160), function()
    TreinarRaca()
end)

-- Auto Arena PvP
createButton("Auto Arena PvP", UDim2.new(0, 10, 0, 1220), function()
    ParticiparArena()
end)

-- Auto Dragon Talon V2
createButton("Auto Dragon Talon V2", UDim2.new(0, 10, 0, 1280), function()
    DesbloquearDragonTalonV2()
end)
-- Auto Tushita
createButton("Auto Tushita", UDim2.new(0, 10, 0, 1340), function()
    _G.AutoTushita = not _G.AutoTushita
    while _G.AutoTushita do
        FarmTushita()
        wait(2)
    end
end)

-- Auto Yama
createButton("Auto Yama", UDim2.new(0, 10, 0, 1400), function()
    _G.AutoYama = not _G.AutoYama
    while _G.AutoYama do
        FarmYama()
        wait(2)
    end
end)

-- Auto Holy Torch
createButton("Auto Holy Torch", UDim2.new(0, 10, 0, 1460), function()
    ColetarHolyTorch()
end)

-- Auto Rengoku
createButton("Auto Rengoku", UDim2.new(0, 10, 0, 1520), function()
    FarmarRengoku()
end)

-- Auto CDK
createButton("Auto CDK", UDim2.new(0, 10, 0, 1580), function()
    FarmarCDK()
end)

-- Auto Soul Guitar
createButton("Auto Soul Guitar", UDim2.new(0, 10, 0, 1640), function()
    FarmarSoulGuitar()
end)

-- Auto God Human
createButton("Auto God Human", UDim2.new(0, 10, 0, 1700), function()
    FarmarGodHuman()
end)

-- Auto Superhuman
createButton("Auto Superhuman", UDim2.new(0, 10, 0, 1760), function()
    FarmarSuperhuman()
end)

-- Auto Death Step
createButton("Auto Death Step", UDim2.new(0, 10, 0, 1820), function()
    FarmarDeathStep()
end)

-- Auto Electric Claw
createButton("Auto Electric Claw", UDim2.new(0, 10, 0, 1880), function()
    FarmarElectricClaw()
end)

-- Auto Sharkman Karate
createButton("Auto Sharkman Karate", UDim2.new(0, 10, 0, 1940), function()
    FarmarSharkmanKarate()
end)

-- Auto Dragon Claw
createButton("Auto Dragon Claw", UDim2.new(0, 10, 0, 2000), function()
    FarmarDragonClaw()
end)

-- Auto Enchant Itens
createButton("Auto Enchant Itens", UDim2.new(0, 10, 0, 2060), function()
    EnchantarItens()
end)

-- Auto God Chalice
createButton("Auto God Chalice", UDim2.new(0, 10, 0, 2120), function()
    ColetarGodChalice()
end)

-- Auto Elite Hunter
createButton("Auto Elite Hunter", UDim2.new(0, 10, 0, 2180), function()
    FarmarEliteHunter()
end)

-- Auto Mirage Island
createButton("Auto Mirage Island", UDim2.new(0, 10, 0, 2240), function()
    ProcurarMirageIsland()
end)

-- Auto Usoap Island
createButton("Auto Usoap Island", UDim2.new(0, 10, 0, 2300), function()
    IrParaUsoppIsland()
end)

-- Auto Peças da CDK
createButton("Auto Coletar Totem CDK", UDim2.new(0, 10, 0, 2360), function()
    ColetarTotemCDK()
end)

-- Auto Haki V2 (Observation)
createButton("Auto Observation V2", UDim2.new(0, 10, 0, 2420), function()
    DesbloquearObservationV2()
end)

-- Auto Boss Tracker
createButton("Auto Boss Tracker", UDim2.new(0, 10, 0, 2480), function()
    _G.AutoBossTracker = not _G.AutoBossTracker
    while _G.AutoBossTracker do
        VerificarBosses()
        wait(3)
    end
end)
-- Auto Arena PvP
createButton("Auto Arena PvP", UDim2.new(0, 10, 0, 2540), function()
    EntrarArenaPvP()
end)

-- Auto Factory Raid
createButton("Auto Factory", UDim2.new(0, 10, 0, 2600), function()
    _G.FactoryAuto = not _G.FactoryAuto
    while _G.FactoryAuto do
        AtacarFactory()
        wait(1)
    end
end)

-- Auto Fruit Sniper
createButton("Auto Fruit Sniper", UDim2.new(0, 10, 0, 2660), function()
    AtivarFruitSniper()
end)

-- Auto Fruits na Shop
createButton("Comprar Frutas da Loja", UDim2.new(0, 10, 0, 2720), function()
    ComprarFrutasLoja()
end)

-- Auto Notification Webhook
createButton("Notificar via Webhook", UDim2.new(0, 10, 0, 2780), function()
    EnviarWebhookFrutas()
end)

-- Auto Farm Seabeast
createButton("Auto Sea Beast", UDim2.new(0, 10, 0, 2840), function()
    _G.AutoSeaBeast = not _G.AutoSeaBeast
    while _G.AutoSeaBeast do
        FarmarSeaBeast()
        wait(3)
    end
end)

-- Auto Fish Quest
createButton("Auto Fish Quest", UDim2.new(0, 10, 0, 2900), function()
    FarmarFishQuest()
end)

-- Auto Dragon Talon V2
createButton("Auto Dragon Talon V2", UDim2.new(0, 10, 0, 2960), function()
    FarmarDragonTalonV2()
end)

-- Auto Trial V4
createButton("Auto Trial V4", UDim2.new(0, 10, 0, 3020), function()
    IniciarTrialV4()
end)

-- Auto Race Awakening
createButton("Auto Race V4", UDim2.new(0, 10, 0, 3080), function()
    DespertarRacaV4()
end)

-- Auto Chip Verde
createButton("Auto Chip Verde", UDim2.new(0, 10, 0, 3140), function()
    ColetarChipVerde()
end)

-- Auto Chips & Trials
createButton("Auto Trials + Chips", UDim2.new(0, 10, 0, 3200), function()
    FarmarChipsETrials()
end)

-- Auto Portal Lab
createButton("Auto Portal Lab", UDim2.new(0, 10, 0, 3260), function()
    AcessarLaboratorio()
end)

-- Auto Buffs
createButton("Auto Buffs", UDim2.new(0, 10, 0, 3320), function()
    AtivarBuffs()
end)

-- Auto Long Sword
createButton("Auto Long Sword", UDim2.new(0, 10, 0, 3380), function()
    FarmarLongSword()
end)

-- Auto Twin Hooks
createButton("Auto Twin Hooks", UDim2.new(0, 10, 0, 3440), function()
    FarmarTwinHooks()
end)

-- Auto Buddy Sword
createButton("Auto Buddy Sword", UDim2.new(0, 10, 0, 3500), function()
    FarmarBuddySword()
end)

-- Auto Cursed Dual Katana Upgrade
createButton("Auto Upgrade CDK", UDim2.new(0, 10, 0, 3560), function()
    UpgradeCDK()
end)

-- Auto Haoshoku
createButton("Auto Haoshoku", UDim2.new(0, 10, 0, 3620), function()
    ObterHaoshoku()
end)

-- Auto Observation ESP
createButton("Auto Observation ESP", UDim2.new(0, 10, 0, 3680), function()
    AtivarESPObservation()
end)

-- Auto Rainbow Haki
createButton("Auto Rainbow Haki", UDim2.new(0, 10, 0, 3740), function()
    AtivarRainbowHaki()
end)

-- Auto Rainbow Aura
createButton("Auto Rainbow Aura", UDim2.new(0, 10, 0, 3800), function()
    AtivarAura()
end)

-- Auto Colors
createButton("Auto Unlock Colors", UDim2.new(0, 10, 0, 3860), function()
    DesbloquearCores()
end)

-- Auto Flame Vortex
createButton("Auto Flame Vortex", UDim2.new(0, 10, 0, 3920), function()
    ColetarFlameVortex()
end)

-- Auto Cursed Ship Key
createButton("Auto Cursed Key", UDim2.new(0, 10, 0, 3980), function()
    ColetarCursedShipKey()
end)

-- Auto Holy Crown
createButton("Auto Holy Crown", UDim2.new(0, 10, 0, 4040), function()
    ColetarHolyCrown()
end)

-- Auto Musketeer Hat
createButton("Auto Musketeer Hat", UDim2.new(0, 10, 0, 4100), function()
    ColetarMusketeerHat()
end)

-- Auto Leviathan Raid
createButton("Auto Leviathan", UDim2.new(0, 10, 0, 4160), function()
    FarmarLeviathan()
end)

-- Auto Haki V2
createButton("Despertar Haki V2", UDim2.new(0, 10, 0, 4220), function()
    AtivarHakiV2()
end)

-- Auto Island Teleports
createButton("Teleports Rápidos", UDim2.new(0, 10, 0, 4280), function()
    AbrirMenuIlhas()
end)

-- Auto Espada Secreta
createButton("Auto Espada Secreta", UDim2.new(0, 10, 0, 4340), function()
    FarmarEspadaSecreta()
end)

-- Auto Espadas Lendárias
createButton("Auto Espadas Lendárias", UDim2.new(0, 10, 0, 4400), function()
    FarmarLendarias()
end)

-- Auto God Mode
createButton("Ativar God Mode", UDim2.new(0, 10, 0, 4460), function()
    AtivarGodMode()
end)

-- Auto Cura
createButton("Auto Cura", UDim2.new(0, 10, 0, 4520), function()
    AtivarAutoCura()
end)

-- Auto Dash Infinito
createButton("Dash Infinito", UDim2.new(0, 10, 0, 4580), function()
    AtivarDashInfinito()
end)

-- Auto Teleport com Preview
createButton("Teleport Preview", UDim2.new(0, 10, 0, 4640), function()
    AtivarTeleportPreview()
end)

-- Auto Detector de Ilhas
createButton("Detector de Ilhas", UDim2.new(0, 10, 0, 4700), function()
    AtivarDetectorIlhas()
end)

-- Auto Ilhas Aleatórias
createButton("Ir para Ilha Aleatória", UDim2.new(0, 10, 0, 4760), function()
    TeleportIlhaAleatoria()
end)

-- Auto All Bosses
createButton("Farm Todos Bosses", UDim2.new(0, 10, 0, 4820), function()
    FarmarTodosBosses()
end)

-- Auto Espada Mythical
createButton("Auto Mythic Sword", UDim2.new(0, 10, 0, 4880), function()
    FarmarMythicalSword()
end)

-- Auto Itens Secretos
createButton("Auto Itens Secretos", UDim2.new(0, 10, 0, 4940), function()
    ColetarItensSecretos()
end)

-- Auto Evento de Natal
createButton("Farm Evento Natal", UDim2.new(0, 10, 0, 5000), function()
    FarmarEventoNatal()
end)

-- Auto Evento de Halloween
createButton("Farm Evento Halloween", UDim2.new(0, 10, 0, 5060), function()
    FarmarEventoHalloween()
end)

-- Auto Evento de Páscoa
createButton("Farm Evento Páscoa", UDim2.new(0, 10, 0, 5120), function()
    FarmarEventoPascoa()
end)

-- Auto Evento de Ano Novo
createButton("Farm Ano Novo", UDim2.new(0, 10, 0, 5180), function()
    FarmarEventoAnoNovo()
end)

-- Auto Presentes
createButton("Coletar Presentes", UDim2.new(0, 10, 0, 5240), function()
    ColetarPresentes()
end)

-- Auto Caça ao Tesouro
createButton("Auto Tesouro", UDim2.new(0, 10, 0, 5300), function()
    CaçarTesouro()
end)
-- Auto Puzzle Indra
createButton("Auto Puzzle Indra", UDim2.new(0, 10, 0, 5360), function()
    ResolverPuzzleIndra()
end)

-- Auto Kill Indra
createButton("Auto Kill Indra", UDim2.new(0, 10, 0, 5420), function()
    MatarIndra()
end)

-- Auto Light Raid
createButton("Auto Light Raid", UDim2.new(0, 10, 0, 5480), function()
    IniciarLightRaid()
end)

-- Auto Dark Raid
createButton("Auto Dark Raid", UDim2.new(0, 10, 0, 5540), function()
    IniciarDarkRaid()
end)

-- Auto Electric Claw
createButton("Auto Electric Claw", UDim2.new(0, 10, 0, 5600), function()
    DesbloquearElectricClaw()
end)

-- Auto Superhuman
createButton("Auto Superhuman", UDim2.new(0, 10, 0, 5660), function()
    DesbloquearSuperhuman()
end)

-- Auto Death Step
createButton("Auto Death Step", UDim2.new(0, 10, 0, 5720), function()
    DesbloquearDeathStep()
end)

-- Auto Sharkman Karate
createButton("Auto Sharkman Karate", UDim2.new(0, 10, 0, 5780), function()
    DesbloquearSharkmanKarate()
end)

-- Auto Dragon Breath
createButton("Auto Dragon Breath", UDim2.new(0, 10, 0, 5840), function()
    DesbloquearDragonBreath()
end)

-- Auto Water Kung Fu
createButton("Auto Water Kung Fu", UDim2.new(0, 10, 0, 5900), function()
    DesbloquearWaterKungFu()
end)

-- Auto Black Leg
createButton("Auto Black Leg", UDim2.new(0, 10, 0, 5960), function()
    DesbloquearBlackLeg()
end)

-- Auto God Human V2
createButton("Auto God Human V2", UDim2.new(0, 10, 0, 6020), function()
    DesbloquearGodHumanV2()
end)

-- Auto Yama Puzzle
createButton("Auto Yama Puzzle", UDim2.new(0, 10, 0, 6080), function()
    ResolverPuzzleYama()
end)

-- Auto Tushita Puzzle
createButton("Auto Tushita Puzzle", UDim2.new(0, 10, 0, 6140), function()
    ResolverPuzzleTushita()
end)

-- Auto God Chalice
createButton("Auto God Chalice", UDim2.new(0, 10, 0, 6200), function()
    ColetarGodChalice()
end)

-- Auto Saber V2
createButton("Auto Saber V2", UDim2.new(0, 10, 0, 6260), function()
    DesbloquearSaberV2()
end)

-- Auto Midnight Blade
createButton("Auto Midnight Blade", UDim2.new(0, 10, 0, 6320), function()
    DesbloquearMidnightBlade()
end)

-- Auto Pole V2
createButton("Auto Pole V2", UDim2.new(0, 10, 0, 6380), function()
    DesbloquearPoleV2()
end)

-- Auto True Triple Katana
createButton("Auto TT Katana", UDim2.new(0, 10, 0, 6440), function()
    DesbloquearTrueTripleKatana()
end)

-- Auto Holy Torch
createButton("Auto Holy Torch", UDim2.new(0, 10, 0, 6500), function()
    ColetarHolyTorch()
end)

-- Auto Leviathan Eye
createButton("Auto Leviathan Eye", UDim2.new(0, 10, 0, 6560), function()
    ColetarLeviathanEye()
end)

-- Auto Mirror Fractal
createButton("Auto Mirror Fractal", UDim2.new(0, 10, 0, 6620), function()
    ColetarMirrorFractal()
end)

-- Auto Rainbow Savior
createButton("Auto Rainbow Savior", UDim2.new(0, 10, 0, 6680), function()
    ColetarRainbowSavior()
end)

-- Auto Soul Guitar Puzzle
createButton("Puzzle Soul Guitar", UDim2.new(0, 10, 0, 6740), function()
    ResolverPuzzleSoulGuitar()
end)

-- Auto Enchant Equip
createButton("Auto Enchant", UDim2.new(0, 10, 0, 6800), function()
    EncantarEquipamentos()
end)

-- Auto World Event
createButton("Auto Eventos Mundo", UDim2.new(0, 10, 0, 6860), function()
    MonitorarEventosMundo()
end)

-- Auto Fruits Radar
createButton("Radar Frutas", UDim2.new(0, 10, 0, 6920), function()
    AtivarRadarFrutas()
end)

-- Auto PVP Mobile
createButton("PvP Mobile", UDim2.new(0, 10, 0, 6980), function()
    AtivarPvPMobile()
end)

-- Auto PVP PC
createButton("PvP PC", UDim2.new(0, 10, 0, 7040), function()
    AtivarPvPPC()
end)

-- Auto Server Check
createButton("Verificação Servidor", UDim2.new(0, 10, 0, 7100), function()
    ChecarServidor()
end)

-- Auto Despertar Fruta
createButton("Despertar Fruta", UDim2.new(0, 10, 0, 7160), function()
    DespertarMinhaFruta()
end)

-- Auto Safe Mode
createButton("Modo Seguro", UDim2.new(0, 10, 0, 7220), function()
    AtivarModoSeguro()
end)

-- Auto Log Cleaner
createButton("Limpar Logs", UDim2.new(0, 10, 0, 7280), function()
    LimparLog()
end)

-- Auto FPS Boost
createButton("Boost FPS", UDim2.new(0, 10, 0, 7340), function()
    AtivarBoostFPS()
end)

-- Auto Remover Neblina
createButton("Remover Neblina", UDim2.new(0, 10, 0, 7400), function()
    DesativarNeblina()
end)

-- Auto Visual Boost
createButton("Boost Visual", UDim2.new(0, 10, 0, 7460), function()
    AtivarVisualBoost()
end)

-- Auto Config PC/Mobile
createButton("Detectar PC/Celular", UDim2.new(0, 10, 0, 7520), function()
    DetectarDispositivo()
end)

-- Auto Interface Personalizada
createButton("Tema Customizado", UDim2.new(0, 10, 0, 7580), function()
    TrocarTemaUI()
end)

-- Auto Scan Frutas Global
createButton("Scan Frutas Global", UDim2.new(0, 10, 0, 7640), function()
    EscanearTodasFrutas()
end)

-- Auto Avisos de Boss
createButton("Avisar Bosses", UDim2.new(0, 10, 0, 7700), function()
    AvisarBosses()
end)

-- Auto Status Boss
createButton("Status Bosses", UDim2.new(0, 10, 0, 7760), function()
    MonitorarBossStatus()
end)

-- Auto Eventos Semanais
createButton("Eventos Semanais", UDim2.new(0, 10, 0, 7820), function()
    FarmarEventosSemanais()
end)

-- Auto Trial Teleport
createButton("Auto Teleport Trial", UDim2.new(0, 10, 0, 7880), function()
    TeleportarTrial()
end)

-- Auto Fish NPC
createButton("Auto Fish NPC", UDim2.new(0, 10, 0, 7940), function()
    InteragirFishNPC()
end)

-- Auto Buff do NPC
createButton("Buff com NPC", UDim2.new(0, 10, 0, 8000), function()
    AtivarBuffNPC()
end)
-- Auto Coletar Moedas Trials
createButton("Coletar Moedas Trials", UDim2.new(0, 10, 0, 8060), function()
    ColetarMoedasTrials()
end)

-- Auto Recompensas Diárias
createButton("Recompensa Diária", UDim2.new(0, 10, 0, 8120), function()
    ColetarRecompensaDiaria()
end)

-- Auto Skip Cutscenes
createButton("Pular Cutscenes", UDim2.new(0, 10, 0, 8180), function()
    PularCutscenes()
end)

-- Auto Transformação V4
createButton("Transformar V4", UDim2.new(0, 10, 0, 8240), function()
    AtivarTransformacaoV4()
end)

-- Auto Equipar Melhor Arma
createButton("Melhor Arma", UDim2.new(0, 10, 0, 8300), function()
    EquiparMelhorArma()
end)

-- Auto Equipar Melhor Fruta
createButton("Melhor Fruta", UDim2.new(0, 10, 0, 8360), function()
    EquiparMelhorFruta()
end)

-- Auto Salvamento de Progressos
createButton("Salvar Progresso", UDim2.new(0, 10, 0, 8420), function()
    SalvarProgressoScript()
end)

-- Auto Chat Custom
createButton("Chat Custom", UDim2.new(0, 10, 0, 8480), function()
    AtivarChatCustom()
end)

-- Auto Lock Player PvP
createButton("PvP Lock Player", UDim2.new(0, 10, 0, 8540), function()
    TravarEmPlayerPvP()
end)

-- Auto PvP Arena V2
createButton("PvP Arena V2", UDim2.new(0, 10, 0, 8600), function()
    AtivarPvPArenaV2()
end)

-- Auto Buff Raid Boss
createButton("Buff Raid Boss", UDim2.new(0, 10, 0, 8660), function()
    AtivarBuffRaidBoss()
end)

-- Auto Script Backup
createButton("Backup Script", UDim2.new(0, 10, 0, 8720), function()
    FazerBackupScript()
end)

-- Auto Destravar Skins
createButton("Destravar Skins", UDim2.new(0, 10, 0, 8780), function()
    DestravarTodasSkins()
end)

-- Auto Nuke Hacker
createButton("Anti Hacker", UDim2.new(0, 10, 0, 8840), function()
    NukeHacker()
end)

-- Auto Avoid Player Stronger
createButton("Evitar Player Forte", UDim2.new(0, 10, 0, 8900), function()
    EvitarPlayersFortes()
end)

-- Auto Notificador Discord (sem webhook)
createButton("Notificador Discord", UDim2.new(0, 10, 0, 8960), function()
    NotificarViaDiscord()
end)

-- Auto Prevenir Ban
createButton("Prevenir Ban", UDim2.new(0, 10, 0, 9020), function()
    SistemaPrevenirBan()
end)

-- Auto Skin Bosses
createButton("Skins Bosses", UDim2.new(0, 10, 0, 9080), function()
    FarmarSkinsBoss()
end)

-- Auto Farm Materiais
createButton("Farm Materiais", UDim2.new(0, 10, 0, 9140), function()
    FarmarMateriais()
end)

-- Auto Setar FPS
createButton("Setar FPS", UDim2.new(0, 10, 0, 9200), function()
    SetarLimiteFPS()
end)

-- Auto Otimizar Interface
createButton("Otimizar Interface", UDim2.new(0, 10, 0, 9260), function()
    OtimizarHUD()
end)

-- Auto Invisível
createButton("Ficar Invisível", UDim2.new(0, 10, 0, 9320), function()
    TornarInvisivel()
end)

-- Auto Speed Dash
createButton("Dash Rápido", UDim2.new(0, 10, 0, 9380), function()
    AtivarDashRapido()
end)

-- Auto Salvamento Manual
createButton("Salvar Script Manual", UDim2.new(0, 10, 0, 9440), function()
    SalvarManual()
end)

-- Auto Config Interface
createButton("Configs UI", UDim2.new(0, 10, 0, 9500), function()
    AbrirConfigUI()
end)

-- Auto Simulador Interações
createButton("Simular Jogador", UDim2.new(0, 10, 0, 9560), function()
    SimularComportamentoJogador()
end)

-- Auto Câmera Estável
createButton("Fixar Câmera", UDim2.new(0, 10, 0, 9620), function()
    CorrigirCamera()
end)

-- Auto Close AntiAFK
createButton("Anti AFK", UDim2.new(0, 10, 0, 9680), function()
    AtivarAntiAFK()
end)

-- Auto Teleport Bosses
createButton("Teleport Bosses", UDim2.new(0, 10, 0, 9740), function()
    TeleportarParaBoss()
end)

-- Auto Crystal Fragments
createButton("Crystal Fragment", UDim2.new(0, 10, 0, 9800), function()
    FarmarCrystalFragments()
end)

-- Auto Equip Top Armas
createButton("Auto Equip TOP", UDim2.new(0, 10, 0, 9860), function()
    EquiparTopArmas()
end)

-- Auto Missões Arena
createButton("Missão Arena", UDim2.new(0, 10, 0, 9920), function()
    IniciarMissaoArena()
end)

-- Auto Reset Teleport
createButton("Reset + TP", UDim2.new(0, 10, 0, 9980), function()
    ResetarETeleportar()
end)

-- Auto Estabilidade Script
createButton("Estabilidade Script", UDim2.new(0, 10, 0, 10040), function()
    EstabilizarExecucao()
end)

-- Auto Reset Fruta
createButton("Reset Fruta", UDim2.new(0, 10, 0, 10100), function()
    ResetarFruta()
end)

-- Auto Delay Seguro
createButton("Delay Seguro", UDim2.new(0, 10, 0, 10160), function()
    AtivarDelaySeguro()
end)

-- Auto Título Raro
createButton("Coletar Título Raro", UDim2.new(0, 10, 0, 10220), function()
    ObterTitulosRaros()
end)

-- Auto Pular Diálogos
createButton("Pular Diálogo", UDim2.new(0, 10, 0, 10280), function()
    PularDialogos()
end)

-- Auto Modo Noturno
createButton("Modo Noturno", UDim2.new(0, 10, 0, 10340), function()
    AtivarModoNoturno()
end)

-- Auto Reset UI
createButton("Resetar UI", UDim2.new(0, 10, 0, 10400), function()
    ResetarInterface()
end)

-- Auto Drop Items Ruins
createButton("Drop Itens Ruins", UDim2.new(0, 10, 0, 10460), function()
    DroparItensRuins()
end)

-- Auto Organizador Inventário
createButton("Organizar Inventário", UDim2.new(0, 10, 0, 10520), function()
    OrganizarInventario()
end)

-- Auto Build Final
createButton("Build Final", UDim2.new(0, 10, 0, 10580), function()
    AtivarBuildFinal()
end)

-- Auto Config Segura
createButton("Config Segura", UDim2.new(0, 10, 0, 10640), function()
    ConfiguracaoSegura()
end)

-- Auto Notificação Celular
createButton("Notificação Mobile", UDim2.new(0, 10, 0, 10700), function()
    NotificarCelular()
end)

-- Auto Salvar Layout
createButton("Salvar Layout", UDim2.new(0, 10, 0, 10760), function()
    SalvarLayoutInterface()
end)

-- Auto FPS Dinâmico
createButton("FPS Dinâmico", UDim2.new(0, 10, 0, 10820), function()
    AjustarFPSDinamico()
end)

-- Auto Painel Informativo
createButton("Painel Info", UDim2.new(0, 10, 0, 10880), function()
    ExibirPainelInformativo()
end)
-- Continuando com as funções do Satix Hub (201 a 250)

-- Auto Trocar Aura
createButton("Trocar Aura", UDim2.new(0, 10, 0, 10880), function()
    TrocarAura()
end)

-- Auto Farm Chips
createButton("Farm Chips", UDim2.new(0, 10, 0, 10940), function()
    FarmarChips()
end)

-- Auto Config Gráficos
createButton("Configurar Gráficos", UDim2.new(0, 10, 0, 11000), function()
    ConfigurarGraficos()
end)

-- Auto Minimizar UI
createButton("Minimizar UI", UDim2.new(0, 10, 0, 11060), function()
    MinimizarInterface()
end)

-- Auto Maximizar UI
createButton("Maximizar UI", UDim2.new(0, 10, 0, 11120), function()
    MaximizarInterface()
end)

-- Auto Custom Skins
createButton("Skins Custom", UDim2.new(0, 10, 0, 11180), function()
    AplicarSkinsCustom()
end)

-- Auto Gerar Nick
createButton("Gerar Nick", UDim2.new(0, 10, 0, 11240), function()
    GerarNickRP()
end)

-- Auto Login Automático
createButton("Auto Login", UDim2.new(0, 10, 0, 11300), function()
    LoginAutomatico()
end)

-- Auto Sistema de Tempos
createButton("Controle de Tempo", UDim2.new(0, 10, 0, 11360), function()
    SistemaTemporizador()
end)

-- Auto Backup Configs
createButton("Backup Configs", UDim2.new(0, 10, 0, 11420), function()
    BackuparConfiguracoes()
end)

-- Auto Sincronizar Servidor
createButton("Sync Servidor", UDim2.new(0, 10, 0, 11480), function()
    SincronizarComServidor()
end)

-- Auto Screenshot
createButton("Screenshot UI", UDim2.new(0, 10, 0, 11540), function()
    TirarScreenshot()
end)

-- Auto Corrigir Bugs
createButton("Corrigir Bugs", UDim2.new(0, 10, 0, 11600), function()
    CorrigirBugsGerais()
end)

-- Auto Verificador Atualizações
createButton("Verificar Update", UDim2.new(0, 10, 0, 11660), function()
    VerificarAtualizacoes()
end)

-- Auto Fixar Frame
createButton("Fixar Frame", UDim2.new(0, 10, 0, 11720), function()
    FixarFrameUI()
end)

-- Auto Nomes Coloridos
createButton("Nomes Coloridos", UDim2.new(0, 10, 0, 11780), function()
    AtivarNomesColoridos()
end)

-- Auto Musica Lobby
createButton("Música Lobby", UDim2.new(0, 10, 0, 11840), function()
    TocarMusicaLobby()
end)

-- Auto Reconectar
createButton("Auto Reconectar", UDim2.new(0, 10, 0, 11900), function()
    AutoReconectar()
end)

-- Auto Créditos Equipe
createButton("Ver Créditos", UDim2.new(0, 10, 0, 11960), function()
    MostrarCreditosEquipe()
end)

-- Auto Compatibilidade KRNL
createButton("Fix KRNL", UDim2.new(0, 10, 0, 12020), function()
    CorrigirParaKRNL()
end)
createButton("Auto Trial v2", UDim2.new(0, 10, 0, 2700), function()
    print("Auto Trial v2 Ativado!")
end)

createButton("Auto Trial v3", UDim2.new(0, 10, 0, 2760), function()
    print("Auto Trial v3 Ativado!")
end)

createButton("Auto V4 Awaken", UDim2.new(0, 10, 0, 2820), function()
    print("Auto V4 Awaken Ativado!")
end)

createButton("Auto Train Observation", UDim2.new(0, 10, 0, 2880), function()
    print("Auto Train Observation Ativado!")
end)

createButton("Auto Train Armament", UDim2.new(0, 10, 0, 2940), function()
    print("Auto Train Armament Ativado!")
end)

createButton("Auto Saber Quest", UDim2.new(0, 10, 0, 3000), function()
    print("Auto Saber Quest Ativado!")
end)

createButton("Auto Elite Boss", UDim2.new(0, 10, 0, 3060), function()
    print("Auto Elite Boss Ativado!")
end)

createButton("Auto Tushita", UDim2.new(0, 10, 0, 3120), function()
    print("Auto Tushita Ativado!")
end)

createButton("Auto Yama", UDim2.new(0, 10, 0, 3180), function()
    print("Auto Yama Ativado!")
end)

createButton("Auto Holy Torch", UDim2.new(0, 10, 0, 3240), function()
    print("Auto Holy Torch Ativado!")
end)

createButton("Auto God Human", UDim2.new(0, 10, 0, 3300), function()
    print("Auto God Human Ativado!")
end)

createButton("Auto Dragon Talon V2", UDim2.new(0, 10, 0, 3360), function()
    print("Auto Dragon Talon V2 Ativado!")
end)

createButton("Auto Craft Dino Rood", UDim2.new(0, 10, 0, 3420), function()
    print("Auto Craft Dino Rood Ativado!")
end)

createButton("Auto Buy Haki", UDim2.new(0, 10, 0, 3480), function()
    print("Auto Buy Haki Ativado!")
end)

createButton("Auto Train Race", UDim2.new(0, 10, 0, 3540), function()
    print("Auto Train Race Ativado!")
end)

createButton("Auto Upgrade Sword", UDim2.new(0, 10, 0, 3600), function()
    print("Auto Upgrade Sword Ativado!")
end)

createButton("Auto Unlock Portals", UDim2.new(0, 10, 0, 3660), function()
    print("Auto Unlock Portals Ativado!")
end)

createButton("Auto Collect Hallow Essence", UDim2.new(0, 10, 0, 3720), function()
    print("Auto Collect Hallow Essence Ativado!")
end)

createButton("Auto Sea Beast Kill", UDim2.new(0, 10, 0, 3780), function()
    print("Auto Sea Beast Kill Ativado!")
end)

createButton("Auto Kill Leviathan", UDim2.new(0, 10, 0, 3840), function()
    print("Auto Kill Leviathan Ativado!")
end)

createButton("Auto Arena PVP", UDim2.new(0, 10, 0, 3900), function()
    print("Auto Arena PVP Ativado!")
end)

createButton("Auto Equip Best Gear", UDim2.new(0, 10, 0, 3960), function()
    print("Auto Equip Best Gear Ativado!")
end)

createButton("Auto Observation V2", UDim2.new(0, 10, 0, 4020), function()
    print("Auto Observation V2 Ativado!")
end)

createButton("Auto Bounty Hunt", UDim2.new(0, 10, 0, 4080), function()
    print("Auto Bounty Hunt Ativado!")
end)

createButton("Auto God Chalice Hunt", UDim2.new(0, 10, 0, 4140), function()
    print("Auto God Chalice Hunt Ativado!")
end)

createButton("Auto Use Portal", UDim2.new(0, 10, 0, 4200), function()
    print("Auto Use Portal Ativado!")
end)

createButton("Auto Search Chests", UDim2.new(0, 10, 0, 4260), function()
    print("Auto Search Chests Ativado!")
end)

createButton("Auto Collect Flowers", UDim2.new(0, 10, 0, 4320), function()
    print("Auto Collect Flowers Ativado!")
end)

createButton("Auto Kill Hydra", UDim2.new(0, 10, 0, 4380), function()
    print("Auto Kill Hydra Ativado!")
end)

createButton("Auto Trial Timer Skip", UDim2.new(0, 10, 0, 4440), function()
    print("Auto Trial Timer Skip Ativado!")
end)

createButton("Auto Toggler Sniper", UDim2.new(0, 10, 0, 4500), function()
    print("Auto Toggler Sniper Ativado!")
end)

createButton("Auto Spawn Boat", UDim2.new(0, 10, 0, 4560), function()
    print("Auto Spawn Boat Ativado!")
end)

createButton("Auto Boat Kill", UDim2.new(0, 10, 0, 4620), function()
    print("Auto Boat Kill Ativado!")
end)

createButton("Auto Factory Raid", UDim2.new(0, 10, 0, 4680), function()
    print("Auto Factory Raid Ativado!")
end)

createButton("Auto Kill NPC (All Maps)", UDim2.new(0, 10, 0, 4740), function()
    print("Auto Kill NPC (All Maps) Ativado!")
end)

createButton("Auto Awakening Fruit", UDim2.new(0, 10, 0, 4800), function()
    print("Auto Awak
