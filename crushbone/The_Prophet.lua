function event_death(e)
	if (eq.get_zone_instance_version() == 1) then 
		local itemQuantity = 2;
		local lootTable = { "68719", "68712", "68715", "68722", "68706", "68714", "68704", "68710", "68703", "68708", "68717", "68720", "68701", "68711" };
		for i=1, itemQuantity do
			e.self:AddItem(tonumber(lootTable[math.random(#lootTable)]), 1);
		end
	end
end

function event_combat(e)
	if(e.joined) then
		random_say = math.random(100);
		if(random_say <= 30) then
			e.self:Say("Death!!  Death to all who oppose the Crushbone orcs!!");
		elseif(random_say <= 65) then
			e.self:Say("Hail, Emperor Crush!!");
		else
			e.self:Say("Fall before the might of Clan Crushbone!!");
		end
	end
end