function event_death_complete(e)
	eq.depop_all(223164);
	-- send a signal to the zone_status that I died
	eq.signal(223097,5);
	-- get the zone instance id
	local instance_id = eq.get_zone_instance_id();
	-- load qglobals and set bit 8
	local qglobals = eq.get_qglobals();
	local phase_bit = tonumber(qglobals[instance_id.."_potimeb_phase_bit"]);
	eq.set_global(instance_id.."_potimeb_phase_bit",tostring(bit.bor(phase_bit,8)),7,"D3");
end

function event_spawn(e)
	eq.set_next_hp_event(51);
end

function event_hp(e)
	if (e.hp_event == 51) then
		-- spawn copies
		local xloc = e.self:GetX();
		local yloc = e.self:GetY();
		local zloc = e.self:GetZ();
		local heading = e.self:GetHeading();
		eq.spawn2(223164,0,0,xloc + math.random(-75,75),yloc + math.random(-75,75),zloc,heading);
		eq.spawn2(223164,0,0,xloc - math.random(-75,75),yloc - math.random(-75,75),zloc,heading);
	end
end
