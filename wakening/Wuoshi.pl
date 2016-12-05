sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		## $leaderent = $group->GetLeader();
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
			if ($rpc->GetZoneID() == $zoneid) {
				$rpc->SetGlobal("Wuoshi",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing Wuoshi.");
			}
		}
	}
	else {
		$client->SetGlobal("Wuoshi",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing Wuoshi.");
	}
}