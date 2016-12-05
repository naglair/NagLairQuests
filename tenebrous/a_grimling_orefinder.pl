sub EVENT_AGGRO {
	plugin::Whisper("These mines are property of the grimling empire!  You have trespassed and now you die!");
}

sub EVENT_DEATH_COMPLETE {
	quest::emote("slumps to the ground in a puddle of dark blood.");
}