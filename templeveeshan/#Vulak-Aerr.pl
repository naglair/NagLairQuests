sub EVENT_TIMER {
	@dragoncheck = (124077,124076,124008,124103,124074,124017);
	foreach $checkboss (@dragoncheck) {
		if ($entity_list->GetMobByNpcTypeID($checkboss)) {
			$entity_list->GetMobByNpcTypeID($checkboss)->AddToHateList($client,1);
			quest::shout2 ("".$entity_list->GetMobByNpcTypeID($checkboss)->GetCleanName()." attack ".$client->GetCleanName().", I command you!");
		}
	}
}	

sub EVENT_SPAWN {
	quest::shout2 ("Vengeance will be mine... How dare you enter my lair!");
	quest::depopall(124021);
	quest::depopall(124080);
	quest::depopall(124157);
}

sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
			if ($rpc->GetZoneID() == $zoneid) {
				$rpc->SetGlobal("Vulak A`err",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing Vulak A`err!");
			}
		}
		quest::setglobal ("vulakcooldown",1,7,"H6");  ## 6 hour cooldown timer on Vulak
	}
	else {
		quest::setglobal ("vulakcooldown",1,7,"H6");  ## 6 hour cooldown timer on Vulak
		$client->SetGlobal("Vulak A`err",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing Vulak A`err!");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::shout2 ("But how.......");
}

sub EVENT_AGGRO {
	quest::settimer("checkdragons",8);  # keep the exploiters at bay
}