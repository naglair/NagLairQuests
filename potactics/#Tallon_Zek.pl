sub EVENT_SPAWN {
	quest::settimer("despawn", 2900); # 45 min to kill him
	quest::settimer("stopmoving",5);
}

sub EVENT_DEATH_COMPLETE {
	quest::stoptimer("despawn");
	quest::stoptimer("stopmoving");
	quest::signalwith(214123, 214108, 0); # Tell trigger that Tallon is dead
}

sub EVENT_SIGNAL {
	quest::stoptimer("despawn");
	quest::stoptimer("stopmoving");
	quest::depop();
}

sub EVENT_TIMER {
	if ($timer eq "despawn") {
		quest::stoptimer("despawn");
		quest::stoptimer("stopmoving");
		quest::depop();
	}
	if ($timer eq "stopmoving" && $x < 340 && $y > -68) {
		quest::pause(2900);
	}
}

# End of File  Zone: PoTactics  ID: 214108 -- #Tallon_Zek
# Used in Rallos Zek Event