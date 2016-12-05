sub EVENT_ENTERZONE {
	BEGINRAID();
}

sub EVENT_TIMER {
  if (defined($qglobals{potimeb_finished})) {
    #quest::delglobal("potimeLockout");
    #quest::setglobal("potimeLockout", 6, 5, "D7");
    #quest::delglobal("potime_canzone");
    quest::movepc(202, -55.82, 43.93, -158.81);
  }
}

sub EVENT_CLICKDOOR {
	if		($qglobals{POTI}==1) {	$instance = $qglobals{"PotimeBInsta1"}; }
	elsif	($qglobals{POTI}==2) {	$instance = $qglobals{"PotimeBInsta2"}; }
	elsif	($qglobals{POTI}==3) {	$instance = $qglobals{"PotimeBInsta3"}; }
	elsif	($qglobals{POTI}==4) {	$instance = $qglobals{"PotimeBInsta4"}; }
	elsif	($qglobals{POTI}==5) {	$instance = $qglobals{"PotimeBInsta5"}; }

	# my $instance = quest::GetInstanceID("potimeb", 0);
	my $three = $entity_list->GetMobByNpcTypeID(223997);
	my $four = $entity_list->GetMobByNpcTypeID(223998);
	my $five = $entity_list->GetMobByNpcTypeID(223999);

	# if ($doorid == 62) { $client->Message(10, "The portal, dim at first, begins to glow brighter.1");quest::MovePCInstance(223, $instance, -401, 0, 348); }
	# if ($doorid == 62) { $client->Message(10, "The portal, dim at first, begins to glow brighter2.");quest::MovePCInstance(223, $instance, -401, 0, 348); }
	# if ($doorid == 24) { $client->Message(10, "The portal, dim at first, begins to glow brighter3.");quest::MovePCInstance(223, $instance, -419, 0, 3); }

	if ($doorid == 62) {
		quest::setglobal("potimeLockout", 3, 5, "H24");
		quest::MovePCInstance(223, $instance, -401, 0, 348);
		## first portal after the initial trials - you gotta kill some guys. ends with the rock mobs
	}
	elsif ($doorid == 24) {
		# quest::setglobal("potimeLockout", 4, 5, "H24");
		quest::MovePCInstance(223, $instance, -419, 0, 3);
	}
	elsif ($doorid == 51) {
		# quest::setglobal("potimeLockout", 5, 5, "H24");
		quest::MovePCInstance(223, $instance, 251, -1124, -1);
	} 
}

sub BEGINRAID {
  if (!defined($qglobals{potimeLockout}) && !defined($qglobals{potime_canzone})) {
    #quest::setglobal("potimeLockout", 1, 5, "H24");
    #quest::setglobal("potime_canzone", 1, 5, "H24");
  }
}