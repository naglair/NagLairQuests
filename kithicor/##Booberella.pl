# Booberella
# Under lvl 40 boss

sub EVENT_SPAWN {
	quest::shout("Boobs..");
	quest::pathto(-782,-1319,-43);
}

sub EVENT_DEATH_COMPLETE {
	plugin::Whisper("We'll be right back! Then you can see more of my booooooobs!");
}