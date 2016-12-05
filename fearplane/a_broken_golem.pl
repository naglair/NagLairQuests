sub EVENT_ITEM {
	if($itemcount{14319} == 1){
		plugin::Whisper("Error! Malfunction! Destroy!");
		plugin::Whisper("A $class like you always bring out the worst in me.");
		quest::spawn2(72106,0,0,$x,$y,$z,$h);
		quest::depop();
	}
}

sub EVENT_SIGNAL {
 if($signal == 0) {
  plugin::Whisper("Such is the will of Cazic-Thule!");
 }
}

#Original by: ? Additions by: Jim Mills