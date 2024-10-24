--[[
	##########################################################################
	##                                                                      ##
	## Project: 'Taser' - resource for MTA: San Andreas                     ##
	##                                                                      ##
	##########################################################################
	[C] Copyright 2013-2014, Falke
]]


local cFunc = {}
local cSetting = {}


-- FUNCTIONS --
setWeaponProperty("silenced", "pro", "weapon_range", 45.0)
setWeaponProperty("silenced", "pro", "maximum_clip_ammo", 1)
setWeaponProperty("silenced", "pro", "damage", 100)

setWeaponProperty("silenced", "std", "weapon_range", 45.0)
setWeaponProperty("silenced", "std", "maximum_clip_ammo", 1)
setWeaponProperty("silenced", "std", "damage", 100)

setWeaponProperty("silenced", "poor", "weapon_range", 45.0)
setWeaponProperty("silenced", "poor", "maximum_clip_ammo", 1)
setWeaponProperty("silenced", "poor", "damage", 100)

-- EVENT HANDLERS --
local whitelistAccounts = {3,334,2}
function TaserDamage ( attacker, weapon, bodypart, loss ) --when a player is damaged  
	local accID = getElementData(source,"account:id")
	for i,v in ipairs(whitelistAccounts) do 
		if accID == v then return end
	end
if getElementData(source,"knock:knocked") then return false end
		if(wep == 23)  and (bodypart == 9) then    
		cancelEvent()
				setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "ped", "KO_shot_face", 10000, false, true, false)
	elseif(wep == 23)  and (bodypart == 8) then
		cancelEvent()
				setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "CRACK", "crckdeth2", 10000, false, true, false)
	elseif(wep == 23)  and (bodypart == 7) then
				cancelEvent()
						setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "CRACK", "crckdeth2", 10000, false, true, false)
	elseif(wep == 23)  and (bodypart == 6) then
				cancelEvent()
						setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "CRACK", "crckdeth2", 10000, false, true, false)
	elseif(wep == 23)  and (bodypart == 5) then
				cancelEvent()
						setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "CRACK", "crckdeth2", 10000, false, true, false)
	elseif(wep == 23)  and (bodypart == 4) then
				cancelEvent()
						setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "CRACK", "crckdeth3", 10000, false, true, false)
	elseif(wep == 23)  and (bodypart == 3) then
				cancelEvent()
						setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "ped", "KO_shot_stom", 10000, false, true, false)
	elseif(wep == 23)  and (bodypart == 2) then
				cancelEvent()
						setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "CRACK", "crckdeth2", 10000, false, true, false)
	elseif(wep == 23)  and (bodypart == 1) then
				cancelEvent()
						setElementFrozen(source,true)
		setTimer ( setElementFrozen, 45000, 1,source,false )		
		setPedAnimation(source, "CRACK", "crckdeth2", 10000, false, true, false)
	end
end
addEventHandler ( "onPlayerDamage", getRootElement (), TaserDamage )

