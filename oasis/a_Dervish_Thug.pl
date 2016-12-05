sub EVENT_COMBAT {
	if($combat_state == 1){
		plugin::Whisper("Time to die $name");
	}
}
