-- Give any NPC in game a chance to drop a Nagafen's token
function event_death(e)
	if (math.random(100) <= 1) then
		e.self:AddItem(40903, 1);
		e.other:Message(4, "Oh my! A powerfull token dropped");
	end
end	

	
