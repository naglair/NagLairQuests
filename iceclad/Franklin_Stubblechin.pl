sub EVENT_SAY {
	if ($text =~ /Hail/i) {
		quest::say ("This fire feels nice on my bottom.  Go ahead and get warm traveler.");
	}
}
