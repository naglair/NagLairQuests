sub EVENT_WAYPOINT_ARRIVE {
	if($wp eq 14) {
	plugin::Whisper("Sir. You called for me?");
	quest::signal(1068);
	}
	if($wp eq 40) {
	plugin::Whisper("McNeal Jocub? You have been found guilty of crimes against the city of Qeynos.");
	}
	if($wp eq 41) {
	quest::signal(1099);
	}
}

sub EVENT_SIGNAL {
	plugin::Whisper("Aye sir!");
}

sub EVENT_SAY {
	if($text=~/hail/i) {
	plugin::Whisper("I have no time to talk, citizen. Please, step aside!");
	}
}
