sub EVENT_SIGNAL {
  if($signal == 1) {
    plugin::Whisper("Um, just fine, Knargon. What do you want now, huh?");
    quest::signalwith(2072,1,1);
	}
  if($signal == 2) {
	plugin::Whisper("How about you go, and I'll catch up with you... never?");
    }
}
