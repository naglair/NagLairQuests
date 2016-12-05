sub EVENT_WAYPOINT_ARRIVE{
	if(($wp==2) || ($wp==4) || ($wp==6)){
		plugin::Whisper("condition report soldier!");
		quest::signalwith(22066,1,1);
	}
	if(($wp==3) || ($wp==7)){
		plugin::Whisper("condition report soldier!");
		quest::signalwith(22035,1,1);
	}
}

