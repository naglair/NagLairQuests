my $mccount=0;
sub EVENT_SPAWN {
	#quest::delglobal("arbitor_of_earth");
	#quest::shout("fTrigger spawn");
    quest::settimer("final",59);
	quest::settimer("ringemote",120);
	
	$mccount=0;
	
}

sub EVENT_TIMER {
	$check_boss = $entity_list->GetMobByNpcTypeID(218053);
	#quest::shout("ftrigger event fire");
	if($timer eq "ringemote" && defined $qglobals{vine_ring_final} && defined $qglobals{mud_ring_final} && defined $qglobals{stone_ring_final} && defined $qglobals{dust_ring_final} ) {
		#ok all the ring events have been run.
		#if boss is not up, shout about him coming
		
		if (!$check_boss) {
			#boss not up, lets shout about him coming
			quest::ze(15,"The ground below you starts to rumble...");
		}
		 
	}
    if($timer eq "final" && !$check_boss && defined $qglobals{vine_ring_final} && defined $qglobals{mud_ring_final} && defined $qglobals{stone_ring_final} && defined $qglobals{dust_ring_final} && !defined $qglobals{arbitor_of_earth}) {
        quest::spawn2(218053,0,0,1520.9,-2745.2,6.1,188.2);
		quest::depop_withtimer();
	}
	else {
		#quest::shout("NO spawn");
	}
	if($mccount > 5) {
		#quest::shout("FTrigger DEPOP!");
		quest::depop_withtimer();
	}
	$mccount += 1;
}