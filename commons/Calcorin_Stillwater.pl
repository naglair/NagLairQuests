sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name, we're quite busy with water filtration.");
	}
}