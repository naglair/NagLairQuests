sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		## $leaderent = $group->GetLeader();
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
			if ($rpc->GetZoneID() == $zoneid) {
				$rpc->SetGlobal("Gorenaire",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing Gorenaire.");
			}
		}
	}
	else {
		$client->SetGlobal("Gorenaire",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing Gorenaire.");
	}
}

sub EVENT_HATE_LIST {

	#static flagging
	$req_flagging = 1;

	if($hate_state == 1)
	{
		$c = $mob->CastToClient();
		if($c)
		{
			$flagged = $client->GetGlobal("flagging");
			{
				if($flagged < $req_flagging)
				{
					$client->Message(15, "You can't kill me yet. Check your flags.");
					$c->Kill();
				}
			}
		}
	}
}