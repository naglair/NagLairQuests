#Mob ID: 214111
#This is the 1st Vallon that spawns right after the Decorins die

sub EVENT_SPAWN {
	#looks like this is to work around a bug...only going to fire 1 time.
	quest::settimer("global", 5);
}

sub EVENT_DEATH_COMPLETE {
	quest::stoptimer("despawn");
	quest::stoptimer("global");
	quest::stoptimer("stopmoving");
	quest::signalwith(214123, 214111, 0);	# Tell trigger that Vallon is dead
    quest::setglobal("vallon",1,3,"H2");
}

sub EVENT_SIGNAL {
	quest::stoptimer("despawn");
	quest::stoptimer("global");
	quest::stoptimer("stopmoving");
	quest::depop();
}

sub EVENT_TIMER {
	#called 1 second aftter spawn
	if ($timer eq "global" && defined $qglobals{"vallon"}) { #we place the global depop here because if used under SPAWN the NPC leaves a ghost mob.
		quest::stoptimer("global");
		quest::depop();
	}
	if ($timer eq "global" && !defined $qglobals{"vallon"}) {
		quest::stoptimer("global");
		quest::settimer("despawn", 2900);	# 45 min to kill him
		quest::settimer("stopmoving",5);
	}
	if ($timer eq "despawn") {
		quest::stoptimer("despawn");
		quest::stoptimer("global");
		quest::stoptimer("stopmoving");
		quest::depop();
	}

	if ($timer eq "stopmoving" && $x < 340 && $y < 80) {
		quest::pause(2900);
	}
}

# End of File  Zone: PoTactics  ID: 214111 -- #Vallon_Zek_ 
# Used in Rallos Zek event