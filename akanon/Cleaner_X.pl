sub EVENT_WAYPOINT_ARRIVE {
if($wp eq 30) {
	plugin::Whisper("Click.. Dust. Dust. Dust.");
	}
if($wp eq 42) {
	plugin::Whisper("Click.. Dust. Dust. Dust.");
	quest::SetRunning(1);
	}
}
