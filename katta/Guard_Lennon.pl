sub EVENT_SPAWN {
	quest::settimer(1,320);
}

sub EVENT_TIMER {
	$npc->SetAppearance(4); 
}

sub EVENT_COMBAT {
	if($combat_state == 1) {
		plugin::Whisper("Don't think you'll get away from me so easily!");
	}
	if($combat_state == 0) {
		plugin::Whisper("Serves you right, knave.  This is what happens to those who break the law.");
	}
}