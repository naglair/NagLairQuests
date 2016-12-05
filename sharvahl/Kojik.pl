sub EVENT_SPAWN {
	quest::settimer(1,75);
	}
	
sub EVENT_TIMER {
	plugin::Whisper("Bags! Chests! You'll need to carry your treasures, come see what I have for sale.");
}
