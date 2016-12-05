sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		## $leaderent = $group->GetLeader();
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
			if ($rpc->GetZoneID() == $zoneid) {
				$rpc->SetGlobal("Venril Sathir",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing Venril Sathir.");
			}
		}
	}
	else {
		$client->SetGlobal("Venril Sathir",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing Venril Sathir.");
	}
}

sub EVENT_DEATH_COMPLETE
{
	my $random_result = int(rand(100));
	my $a=102133; 
	if($random_result<6)
	{
		plugin::Whisper("Spawning Fabled");
		quest::shout2 ("$name has spawned the Fabled ".$npc->GetCleanName()."");
		quest::spawn2($a, 0, 0, $x,$y,$z,$h);
	}
	else
	{
		plugin::Whisper("No spawn");
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


