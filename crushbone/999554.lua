function event_death(e)
	for i=1, 2 do
		e.self:AddItem(eq.ChooseRandom(52120, 52121, 52122 ,52123, 52124), 1);
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
