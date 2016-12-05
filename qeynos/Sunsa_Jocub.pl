sub EVENT_SIGNAL {
  if($signal == 1) {
    plugin::Whisper("Trumpy, you are one sick little man!");
    quest::signalwith(1042,1,1);
	}
}
