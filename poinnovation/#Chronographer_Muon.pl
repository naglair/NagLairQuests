sub EVENT_SAY {
	if (plugin::check_hasitem($client, 29165) || plugin::check_hasitem($client, 56018) ){
		if ($text=~/Hail/i) {
			quest::say("Acquisition of power completed. Would you like to be transported to the time-projection chamber?");
		}
		if ($text=~/yes/i) {
			quest::unique_spawn(206085,0,0,816,-858,-1887,63);
			quest::say("Compliance.");
			quest::movepc(206,266,-857,-1853,62);
                }
	}
}