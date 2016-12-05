sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote ("quickly wipes tears from her face.");
		quest::say ("The Stillwater's are doing a fine job, but, we need a permenant solution!");
	}
}