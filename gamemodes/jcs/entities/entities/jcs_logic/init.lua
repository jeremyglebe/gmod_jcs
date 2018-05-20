AddCSLuaFile( "cl_init.lua" ) -- Make sure clientside
AddCSLuaFile( "shared.lua" )  -- and shared scripts are sent.
 
include('shared.lua')
 
function ENT:Initialize()
	self:SetMoveType(MOVETYPE_NONE)
	self:SetNotSolid(true)
	self:SetNoDraw(true)
	self:DrawShadow(false)
end

--Ensures the entity transmits data to client when outside of visible range
function ENT:UpdateTransmitState()
	return TRANSMIT_ALWAYS
end