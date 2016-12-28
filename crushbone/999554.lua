function event_death(e)
	for i=1, 4 do
		e.self:AddItem(eq.ChooseRandom(68719, 68712, 68715, 68722, 68706, 68714, 68704, 68710, 68703, 68708, 68717, 68720, 68701, 68711), 1);
	end
end

function event_spawn(e)
	e.self:ModifyNPCStat("special_attacks", "SERF"); -- Summon, Enrange, Rampage, Flurry
end

function event_combat(e)
	if (e.joined) then
		eq.set_timer("crushbone_adds", 150000);
	else
		eq.stop_timer("crushbone_adds");
	end
end

function event_timer(e)
	if (e.timer == "crushbone_adds") then
		for i=1, 2 do
			 if (math.random(0, 1) == 1) then
			 	eq.spawn2(eq.ChooseRandom(999522, 999506, 999498), 0, 0, e.self:GetX() + math.random(-5,5), e.self:GetY() + math.random(-5,5), e.self:GetZ(), e.self:GetHeading());
			 end
		end
	end
end
