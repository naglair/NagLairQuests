function event_death(e)
	for i=1, 2 do
		e.self:AddItem(eq.ChooseRandom(68595, 68683, 68597, 68685, 68687, 68692, 68681, 68700, 68691, 68688), 1);
	end
end

function event_spawn(e)
	e.self:ModifyNPCStat("special_attacks", "SERF"); -- Summon, Enrange, Rampage, Flurry
end
