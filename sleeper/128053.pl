sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		## $leaderent = $group->GetLeader();
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
			if ($rpc->GetZoneID() == $zoneid) {
				$rpc->SetGlobal("Progenitor",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing the Progenitor.");
			}
		}
	}
	else {
		$client->SetGlobal("Progenitor",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing the Progenitor.");
	}
}

sub EVENT_DEATH_COMPLETE {
	$timestamp = localtime(time);
	quest::shout2("Fools!  You don't know what you have done!");
	my $string = "$timestamp : $name of $uguild_id";
	quest::write("logs\kill_logs\Focus_of_Air.txt", $string);
}

