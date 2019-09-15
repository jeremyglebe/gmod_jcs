--Things required for scripted entities
ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "JCS_LOGIC_UNIT"
ENT.Author = "whitejay2010"
ENT.Contact = "N/A"
ENT.Purpose = "Controlling game logic in JCS"
ENT.Instructions = "Pls. Don't touch this. Pls."
ENT.Spawnable = false
ENT.AdminSpawnable = false

--These are our "Shared" variables
function ENT:SetupDataTables()
    self:NetworkVar("Int", 0, "GameTime")
end