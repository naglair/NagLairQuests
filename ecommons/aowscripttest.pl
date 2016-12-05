sub EVENT_SPAWN {
	quest::shout("Who dares defile my temple?! Come forth and face me!");
}

sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		if ($raid->IsLeader($client)) {
			for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
				if ($rpc->GetZoneID() == $zoneid) {
					## $rpc->SetGlobal("Avatar of War",1,5,"F");
					$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing the Avatar of War.")
				}
			}
		}
	}
	else {
		$client->SetGlobal("Avatar of War",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing the Avatar of War.")
	}
}