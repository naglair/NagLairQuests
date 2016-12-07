function event_death(e)
	if (eq.get_zone_instance_version() == 1) then 
		local itemQuantity = 2;
		local lootTable = { "68719", "68712", "68715", "68722", "68706", "68714", "68704", "68710", "68703", "68708", "68717", "68720", "68701", "68711" };
		for i=1, itemQuantity do
			e.self:AddItem(tonumber(lootTable[math.random(#lootTable)]), 1);
		end
	end
end



