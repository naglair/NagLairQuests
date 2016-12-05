sub EVENT_SPAWN {
	$npc->SetAppearance(1);
}

sub EVENT_SIGNAL {
	if($signal==1) {
		quest::emote("snores loudly");
	}
	if($signal==2) {
		plugin::Whisper("OWW!");
	}
	if($signal==3) {
		plugin::Whisper("Yes, Grand Historian Thoridain");
		quest::start(11);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	if($wp==5) {
		quest::stop();
		$npc->SetAppearance(1);
	}
}

