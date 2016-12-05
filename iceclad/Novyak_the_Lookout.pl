sub EVENT_SPAWN {
	quest::settimer(1,2400);
}



sub EVENT_TIMER { 
	plugin::Whisper("Guys, can I get down now please?"); 
}