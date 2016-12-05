sub EVENT_SPAWN {
	$npc->SetAppearance(1);
	quest::settimer(1,1800);
}

sub EVENT_TIMER {
	quest::depop();
}

sub EVENT_SIGNAL {
	if($signal == 1) {
		quest::start(3);
		plugin::Whisper("Johanius my love! You and your companions have rescued us from those horrible creatures!");
	}
	if($signal == 2) {
		quest::depop();
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	if($wp == 21) {
		plugin::Whisper("We will see you at home Johanius, please hurry.");
	}
}
