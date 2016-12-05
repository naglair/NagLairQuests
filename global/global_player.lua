	
function event_enter_zone(e)
	local qglobals = eq.get_qglobals(e.self);
	if(e.self:GetLevel() >= 15 and qglobals['Wayfarer'] == nil) then
		local zoneid = eq.get_zone_id();
		if(e.self:GetStartZone() ~= zoneid and (zoneid == 1 or zoneid == 2 or zoneid == 3 or zoneid == 8 or zoneid == 9 
		or zoneid == 10 or zoneid == 19 or zoneid == 22 or zoneid == 23 or zoneid == 24 or zoneid == 29 or zoneid == 30 
		or zoneid == 34 or zoneid == 35 or zoneid == 40 or zoneid == 41 or zoneid == 42 or zoneid == 45 or zoneid == 49 
		or zoneid == 52 or zoneid == 54 or zoneid == 55 or zoneid == 60 or zoneid == 61 or zoneid == 62 or zoneid == 67 
		or zoneid == 68 or zoneid == 75 or zoneid == 82 or zoneid == 106 or zoneid == 155 or zoneid == 202 or zoneid == 382 
		or zoneid == 383 or zoneid == 392 or zoneid == 393 or zoneid == 408)) then
			e.self:Message(15, 
				"A mysterious voice whispers to you, \'If you can feel me in your thoughts, know this -- "
				.. "something is changing in the world and I reckon you should be a part of it. I do not know much, but I do know "
				.. "that in every home city and the wilds there are agents of an organization called the Wayfarers Brotherhood. They "
				.. "are looking for recruits . . . If you can hear this message, you are one of the chosen. Rush to your home city, or "
				.. "search the West Karanas and Rathe Mountains for a contact if you have been exiled from your home for your deeds, "
				.. "and find out more. Adventure awaits you, my friend.\'");
		end
	end
end

function event_connect(e)
	local qglobals = eq.get_qglobals(e.self);
	local currtime = os.time();

	-- Create qglobal if it does'nt exist!
	if (qglobals['last_token_rewarded'] == nil) then
		eq.set_global("last_token_rewarded", tostring(currtime), 5 ,"F");
	end

	local difftime = os.difftime(currtime, qglobals['last_token_rewarded']);
	local count = string.gsub(difftime / 604800, "%.%d+", "", 1); -- 1 week

		if (qglobals['last_token_rewarded'] ~= nil and tonumber(count) > 0) then
			eq.set_global("last_token_rewarded", tostring(currtime), 5 ,"F")
			e.self:SummonItem(40903, tonumber(count));
			
				if (tonumber(count) == 1) then	
					e.self:Message(15, "Oh my! You got a ".. count .." token to spend!");
				else
					e.self:Message(15, "Oh my! You got ".. count .." tokens to spend!");
				end
		end
end
