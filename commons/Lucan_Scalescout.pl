sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote ("shakes his head back and forth.");
		quest::say ("Damn those Orcish Shaman!  Damn them to hell!");
	}
}