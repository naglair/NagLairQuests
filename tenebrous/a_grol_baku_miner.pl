sub EVENT_AGGRO {
	quest::emote("prepares to crush you.");
}

sub EVENT_DEATH_COMPLETE {
	plugin::Whisper("The rocks shall shake as the earth itself avenges me.");
}