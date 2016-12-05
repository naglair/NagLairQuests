sub EVENT_SPAWN {
	quest::shout2 ("In what world can you best me?");
	quest::settimer("depop",1440); # 24 minutes to kill me
}

sub EVENT_AGGRO {
	quest::settimer("recheckbosses",8);  # keep the exploiters at bay
}

sub EVENT_TIMER {
	if ($timer eq "depop") {
		quest::shout2 ("I haven't the time nor the luxury...");
		quest::stoptimer("depop");
		quest::depop();
	}
	if ($timer eq "recheckbosses") {
		@fightcheck = (158014,158010,158015,158012,158013,158007,158008,158011,158009);
		foreach $bosscheck (@fightcheck) {
			if ($entity_list->GetMobByNpcTypeID($bosscheck)) {
				$entity_list->GetMobByNpcTypeID($bosscheck)->AddToHateList($client,1);
				quest::shout2 ("".$entity_list->GetMobByNpcTypeID($bosscheck)->GetCleanName()." attack ".$client->GetCleanName().", finish this cretin!");
			}
		}
	}	
}

sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
			if ($rpc->GetZoneID() == $zoneid) {
				$rpc->SetGlobal("AtenHaRa",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing Aten Ha Ra!");
			}
		}
	}
	else {
		$client->SetGlobal("AtenHaRa",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing Aten Ha Ra!");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::shout2 ("Cretins.....you stopped nothing!");
	quest::setglobal("aten",1,7,"H6"); # straight up 6 hour cooldown
}