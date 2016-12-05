sub EVENT_WAYPOINT_ARRIVE {
  if($wp == 5) {
    plugin::Whisper("How are they biting, little brother?");
	quest::signalwith(1159,1,1);
  }
}

sub EVENT_SIGNAL {
  if(($x == -145) && ($y == -247) && ($signal == 1)) {
    plugin::Whisper("Yes, sir!");
	}
  if($signal == 2) {
	plugin::Whisper("Don't you worry about him! I will take care of [Trumpy] Irontoe once and for all!");
 	}
  if(($x == -145) && ($y == -247) && ($signal == 3)) {
	plugin::Whisper("Curse you, [Trumpy]!!!");
	quest::signalwith(1091,2,1);
	}
	if(($x == -145) && ($y == -247) && ($signal == 4)) {
    plugin::Whisper("If you ever talk that way about my [brother] again, I will throw your butt into the dungeon. I don't care who you know!");
	quest::signalwith(1042,3,1);
    }
}
