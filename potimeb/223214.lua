function event_spawn(e)
	eq.zone_emote(15,"The cage shakes and you hear noises from inside!");

end
function event_death_complete(e)
	-- spawn Zebuxoruk
   eq.spawn2(223212,1,0,-635.485,-1109.51,-2.8105,60);
end