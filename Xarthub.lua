-- Xart Hub by Coz | Inspired by FischMain

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

local Window = Rayfield:CreateWindow({
   Name = "Xart Hub",
   LoadingTitle = "Xart Executor",
   LoadingSubtitle = "Initializing Script...",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "XartHub",
      FileName = "XartHubConfig"
   },
   KeySystem = false
})

local Tab = Window:CreateTab("Auto", 4483362458)

Tab:CreateToggle({
   Name = "Auto Fish",
   CurrentValue = false,
   Flag = "XartAutoFish",
   Callback = function(Value)
      getgenv().autoFish = Value
      while getgenv().autoFish do
         print("🎣 Xart: Fishing...")
         wait(1.5)
      end
   end
})

Tab:CreateToggle({
   Name = "Auto Sell",
   CurrentValue = false,
   Flag = "XartAutoSell",
   Callback = function(Value)
      getgenv().autoSell = Value
      while getgenv().autoSell do
         print("💰 Xart: Selling fish...")
         wait(2)
      end
   end
})

local CreditTab = Window:CreateTab("Credits", 4483362458)

CreditTab:CreateParagraph({
   Title = "Xart Hub",
   Content = "Script by Coz\nInspired by FischMain"
})
