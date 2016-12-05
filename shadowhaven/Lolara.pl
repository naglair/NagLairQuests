sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 3) {
	plugin::Whisper("What the ..? Hey! Get up Halorak, you slug! Now I'm going to have to clean ale off my bed and who knows where you have been!");
	}
	if ($wp == 12) {
	plugin::Whisper("Hey Jaldar, I need your help. That good-for-nothing drunkard Halorak passed out in my room and I need you to 'escort' him out.");
	}
}
