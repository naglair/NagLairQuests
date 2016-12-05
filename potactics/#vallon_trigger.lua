local phase = 0;
math.randomseed( os.time() )
function event_spawn(e)
	phase = 1;
	--spawn vallon up by the door
	eq.spawn2(214083,0,0,-822,1980,205,130.9); --Real Vallon
end

function event_signal(e)
	--eq.zone_emote(14,"Vallon controller emote!");
	if (e.signal == 1) then --tell vallon which phase we are on
		--in here, signal =1 means Real Vallon has Spawned
		--Remind him what phase he is in
		eq.signal(214083,phase);
	elseif (e.signal == 2) then --Vallon Depopped
		if (phase == 1) then
			eq.set_timer("vz_fail",7200000); --two hour fail timer on first split
		end
		phase = phase + 1; --increment phase passed to vallon
		--spawn Vallon and 4 clones. Put them in random places
		local myTable = { 214110, 214110, 214110, 214110, 214083};
		local N = 5;
		for i = N, 2, -1 do -- backwards
			local r = math.random(i); -- select a random number between 1 and i
			myTable[i], myTable[r] = myTable[r], myTable[i]; -- swap the randomly selected item to position i
		end  
		eq.spawn2(myTable[1],0,0,-606,1980,195.1,130.9);
		eq.spawn2(myTable[2],0,0,-666,1980,195.1,130.9);
		eq.spawn2(myTable[3],0,0,-636,1950,195.1,130.9);
		eq.spawn2(myTable[4],0,0,-636,2010,195.1,130.9);
		eq.spawn2(myTable[5],0,0,-636,1980,195.1,130.9);
	elseif (e.signal == 3) then --vallon dead, despawn with timer
		eq.stop_timer("vz_fail");
		eq.depop_with_timer();
	end
end

function event_timer(e)
	if (e.timer == "vz_fail") then --event failed, depop all mobs
		eq.stop_timer("vz_fail");
		eq.depopall(214083); --real vallon
		eq.depopall(214110); --fake vallons
		eq.depop_with_timer(); --myself with respawn timer
	end
end
