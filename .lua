getgenv().Essence = {
    Aimbot = {
        Velocity = {
            Type = "Velocity", -- Options: "Velocity", "AssemblyLinearVelocity", "PositionDelta"
            Prediction = {
                Amount = 0.1,
                AutoPrediction = true
            }
        },
        Camera = {
            Smoothing = 1 -- Range: 0.01 to 1
        },
        TargetPart = "UpperTorso", -- Options: "Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"
        JumpOffset = -1.5,
        AutoAir = {
            Enabled = true,
            Delay = {
                Enabled = false,
                DelayAmount = 1.5 -- Time in seconds
            }
        },
        Notify = true
    },
    Macro = {
        Enabled = true
    },
    Visuals = {
        Highlight = {
            Enabled = true,
            FillColor = Color3.fromRGB(199, 110, 255),
            OutlineColor = Color3.fromRGB(0, 0, 0),
            FillTransparency = 0.5, -- Range: 0 to 1
            OutlineTransparency = 0 -- Range: 0 to 1
        }
    },
    World = {
        Enabled = false,
        Textures = {
            Enabled = true,
            Color = Color3.fromRGB(199, 110, 255),
            Material = Enum.Material.SmoothPlastic, -- Options: SmoothPlastic, Plastic, Glass, ForceField, Neon, Wood, Slate
            IgnorePlayers = true,
            CustomTextures = {
                Enabled = false,
                Texture = "" -- Use Asset ID
            }
        },
        Lighting = {
            Enabled = true,
            Brightness = 2, -- Range: 0 to 10
            ClockTime = 14, -- Range: 0 to 24
            Exposure = 0.5, -- Range: -5 to 5
            GeographicLatitude = 155, -- Range: -180 to 180
            Ambient = Color3.fromRGB(199, 110, 255),
            OutdoorAmbient = Color3.fromRGB(199, 110, 255),
            ColorShift_Bottom = Color3.fromRGB(199, 110, 255),
            ColorShift_Top = Color3.fromRGB(199, 110, 255)
        },
        Fog = {
            Enabled = true,
            Color = Color3.fromRGB(199, 110, 255),
            Start = 0,
            End = 1000,
            Density = 0.5, -- Range: 0 to 1
            Style = "Linear", -- Options: "Linear", "Exponential", "Atmospheric"
            MaxDistance = 2000,
            InscatteringColor = Color3.fromRGB(255, 255, 255),
            ScatteringSource = 1, -- Range: 0 to 1
            Haze = 0, -- Range: 0 to 1
            LightInfluence = 0.5, -- Range: 0 to 1
            SunDirection = Vector3.new(1, -1, 1)
        },
        Atmosphere = {
            Enabled = true,
            Density = 0.3, -- Range: 0 to 1
            Offset = 0.25, -- Range: 0 to 1
            Color = Color3.fromRGB(199, 110, 255),
            Decay = Color3.fromRGB(199, 110, 255)
        },
        Sky = {
            Enabled = true,
            SkyboxBk = "rbxassetid://", -- Back
            SkyboxDn = "rbxassetid://", -- Down
            SkyboxFt = "rbxassetid://", -- Front
            SkyboxLf = "rbxassetid://", -- Left
            SkyboxRt = "rbxassetid://", -- Right
            SkyboxUp = "rbxassetid://"  -- Up
        }
    }
}
