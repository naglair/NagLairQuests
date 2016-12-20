-- Give any NPC in game a chance to drop a Nagafen's token
function event_death(e)
	if (e.other:GetLevel() - e.self:GetLevel() <= 20 or e.self:GetLevel() >= e.other:GetLevel()) then
		if (math.random(100) <= 2) then
			e.self:AddItem(40903, 1);
			e.other:Message(4, "Oh my! A powerfull token dropped");
		end
	end
end	

-- Adjust lvl 61+ pets
function event_spawn(e)
 	local magPets = { 756, 751, 766, 761, 566, 613, 596, 581 };
	local necPets = { 629, 630, 631, 632, 633 };
	local bstPets = { 525, 526, 527, 528 };

	if (e.self:GetNPCTypeID() == magPets[1] or
	 	e.self:GetNPCTypeID() == magPets[2] or
	  	e.self:GetNPCTypeID() == magPets[3] or
	   	e.self:GetNPCTypeID() == magPets[4] or
	    e.self:GetNPCTypeID() == magPets[5] or
		e.self:GetNPCTypeID() == magPets[6] or
		e.self:GetNPCTypeID() == magPets[7] or
		e.self:GetNPCTypeID() == magPets[8] or
	 	e.self:GetNPCTypeID() == necPets[1] or
     	e.self:GetNPCTypeID() == necPets[2] or
	   	e.self:GetNPCTypeID() == necPets[3] or
		e.self:GetNPCTypeID() == necPets[4] or
		e.self:GetNPCTypeID() == necPets[5] or
	    e.self:GetNPCTypeID() == bstPets[1] or
	    e.self:GetNPCTypeID() == bstPets[2] or
		e.self:GetNPCTypeID() == bstPets[3] or
		e.self:GetNPCTypeID() == bstPets[4]) then
			e.self:ModifyNPCStat("max_hp", tostring(e.self:GetHP() * 0.5 + e.self:GetHP()));
			e.self:ModifyNPCStat("ac", tostring(e.self:GetAC() * 0.5 + e.self:GetAC()));
			e.self:ModifyNPCStat("min_hit", tostring(e.self:GetMinDMG() * 2 + e.self:GetMinDMG()));
			e.self:ModifyNPCStat("max_hit", tostring(e.self:GetMaxDMG() * 2 + e.self:GetMaxDMG()));
			e.self:ModifyNPCStat("accuracy", "50");
			e.self:ModifyNPCStat("atk", "2000");
			e.self:ModifyNPCStat("mr", "300");
			e.self:ModifyNPCStat("fr", "300");
			e.self:ModifyNPCStat("cr", "300");
			e.self:ModifyNPCStat("dr", "300");
			e.self:ModifyNPCStat("pr", "300");
	end
end
