sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote ("sighs.");
		quest::say ("This lake was once plentiful of fish.  But ever since the Orc Shaman envoked their plaque...");
	}
}