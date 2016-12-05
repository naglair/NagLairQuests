sub EVENT_SPAWN {
	quest::shout("Who dares defile my temple?! Come forth and face me!");
}

sub EVENT_KILLED_MERIT {
	quest::say ("DEBUG: Line 1");
	my $raid = $entity_list->GetRaidByClient($client);
	quest::say ("DEBUG: Line 2");
	if ($raid) {
		quest::say ("DEBUG: Line 3");
		## $leaderent = $group->GetLeader();
		quest::say ("DEBUG: Line 4");
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			quest::say ("DEBUG: Line 5");
			my $rpc = $raid->GetMember($count);
			quest::say ("DEBUG: Line 6");
			if ($rpc->GetZoneID() == $zoneid) {
			quest::say ("DEBUG: Line 7");
				## $rpc->SetGlobal("Avatar of War",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing the Avatar of War.");
				quest::say ("DEBUG: Line 8");
			}
		}
	}
	else {
		quest::say ("DEBUG: Line 9");
		$client->SetGlobal("Avatar of War",1,5,"F");
		quest::say ("DEBUG: Line 10");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing the Avatar of War.");
	}
}