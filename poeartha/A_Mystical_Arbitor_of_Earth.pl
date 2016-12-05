



sub EVENT_SPAWN {
	quest::shout("Puny mortals, I will crush you!!!!");
    quest::settimer("despawn",7100);
}

sub EVENT_COMBAT {
	if ($combat == 1) {
		quest::stoptimer("despawn");
	} else {
		quest::settimer("despawn",7100);
	}
}

sub EVENT_TIMER {
	if($timer eq "despawn") {
        quest::depop();
    }

}

sub EVENT_DEATH_COMPLETE {
        #quest::delglobal("vine_ring_final");
        #quest::delglobal("mud_ring_final");
        #quest::delglobal("stone_ring_final");
        #quest::delglobal("dust_ring_final");
		quest::setglobal("arbitor_of_earth", 1, 3, "H6");
		quest::depop_withtimer(218094); #despawn final trigger
        quest::spawn2(218068,0,0,$x,$y,$z,$h);
}