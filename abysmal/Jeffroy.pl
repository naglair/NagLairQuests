sub EVENT_WAYPOINT_ARRIVE {
	if($wp == 8) {
		plugin::Whisper("Anyone ever tell you that you look like my Uncle Fergus from Freeport? Hiccup! 'Jeffroy stumbles a bit and almost falls down.'");
	}
	if($wp == 12) {
		quest::emote("burps. 'Ungh.  I don't feel so good.  Why is everything sphinning.  I better lay down here.'");
	}
	if($wp == 13) {
		$npc->SetAppearance(3); 
	}
	if($wp == 14) {
		$npc->SetAppearance(0);
	}
	if($wp == 17) {
		plugin::Whisper("Hey bartender!  I will take another ale.  Huh, you don't sell ale?  Ah Dam!  Where ish my room at?");
	}
	if($wp == 38) {
		plugin::Whisper("Wait a minute.  This ishint my room. . . I didn't just see a ghosht did I?  Too much ale.");
	}
	if($wp == 45) {
		plugin::Whisper("Hey, you got any beer in theshe cratesh?");
	}
}