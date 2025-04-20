-- Criação da Interface do Satix Hub V2 (Estilo Redz Hub)

local SatixUI = Instance.new("ScreenGui")
SatixUI.Name = "SatixHubV1"
SatixUI.ResetOnSpawn = false
SatixUI.IgnoreGuiInset = true
SatixUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SatixUI.Parent = game:GetService("CoreGui")

-- Frame principal
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 600, 0, 400)
Main.Position = UDim2.new(0.5, -300, 0.5, -200)
Main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Main.BorderSizePixel = 0
Main.Parent = SatixUI

local UICorner = Instance.new("UICorner", Main)
UICorner.CornerRadius = UDim.new(0, 10)

-- Título
local Title = Instance.new("TextLabel")
Title.Text = "Satix Hub V1"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Parent = Main

-- Frame de abas
local TabsFrame = Instance.new("Frame")
TabsFrame.Size = UDim2.new(0, 150, 1, -40)
TabsFrame.Position = UDim2.new(0, 0, 0, 40)
TabsFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TabsFrame.BorderSizePixel = 0
TabsFrame.Parent = Main

local TabsLayout = Instance.new("UIListLayout", TabsFrame)
TabsLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabsLayout.Padding = UDim.new(0, 4)

-- Frame de conteúdo das abas
local Pages = Instance.new("Frame")
Pages.Name = "Pages"
Pages.Position = UDim2.new(0, 160, 0, 45)
Pages.Size = UDim2.new(1, -160, 1, -50)
Pages.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Pages.BorderSizePixel = 0
Pages.Parent = Main

local UICorner2 = Instance.new("UICorner", Pages)
UICorner2.CornerRadius = UDim.new(0, 6)

-- Lista de abas
local TabList = {"Auto Farm", "Bosses", "Raças", "Trials", "Eventos", "Teleports", "Haki", "Itens", "Sea", "Misc"}

-- Tabelas de Tabs e Páginas
local Tabs = {}
local PagesTable = {}

for _, tabName in ipairs(TabList) do
    -- Botão de abas
    local Button = Instance.new("TextButton")
    Button.Text = tabName
    Button.Size = UDim2.new(1, -10, 0, 30)
    Button.Position = UDim2.new(0, 5, 0, 0)
    Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Button.TextColor3 = Color3.new(1, 1, 1)
    Button.Font = Enum.Font.GothamMedium
    Button.TextSize = 14
    Button.BorderSizePixel = 0
    Button.Parent = TabsFrame

    -- Conteúdo das abas
    local Content = Instance.new("ScrollingFrame")
    Content.Name = tabName:gsub(" ", "") .. "Page"
    Content.Size = UDim2.new(1, 0, 1, 0)
    Content.BackgroundTransparency = 1
    Content.Visible = false
    Content.BorderSizePixel = 0
    Content.CanvasSize = UDim2.new(0, 0, 10, 0)
    Content.ScrollBarThickness = 4
    Content.Parent = Pages

    local Layout = Instance.new("UIListLayout", Content)
    Layout.Padding = UDim.new(0, 5)
    Layout.SortOrder = Enum.SortOrder.LayoutOrder

    -- Função ao clicar na aba
    Button.MouseButton1Click:Connect(function()
        for _, page in pairs(Pages:GetChildren()) do
            if page:IsA("ScrollingFrame") then
                page.Visible = false
            end
        end
        Content.Visible = true
    end)

    -- Adicionando à tabela
    Tabs[tabName] = Button
    PagesTable[tabName] = Content
end
