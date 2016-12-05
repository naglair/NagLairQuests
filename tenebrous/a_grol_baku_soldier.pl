sub EVENT_AGGRO {
	quest::emote("speaks in a voice like grinding stones, 'Mountain Tegi made of stone will crush this being of flesh and bone!'");
}

sub EVENT_DEATH_COMPLETE {
	plugin::Whisper("Uuuuhhh...arg!");
}