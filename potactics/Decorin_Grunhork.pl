#Spawn Tallon Zek
sub EVENT_DEATH_COMPLETE {
        quest::signalwith(214123, 214057, 0);
}

sub EVENT_SIGNAL {
        #event time expired, depop with respawn timer.
        quest::depop_withtimer();
}

sub EVENT_SPAWN {
	my @elist = (214111,214108,214109,214113);
	#is #rallos_trigger.pl up?
    $trigger_up = $entity_list->GetMobByNpcTypeID(214123); 
	if (!$trigger_up) {
		quest::depop_withtimer();
	}
	
	#is the event in progress?
	foreach my $spid (@elist) { 
		if($entity_list->GetMobByNpcTypeID($spid)) {
			#yep event is in progress
			quest::depop_withtimer();
			last;
		}
	}
	
}

# End of File  Zone: PoTactics  ID: 214057 -- Decorin_Grunhork