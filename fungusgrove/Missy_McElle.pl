sub EVENT_AGGRO {
	plugin::Whisper("That's the last mistake you'll make!");
}

sub EVENT_DEATH_COMPLETE {
	plugin::Whisper("Guards! Guards!!");
}
