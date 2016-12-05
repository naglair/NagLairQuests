sub EVENT_SPAWN {
	quest::settimer("water",3);
}

sub EVENT_TIMER {
	if ($timer eq "water") { 
		quest::doanim(6); 
	}
	elsif ($timer eq "resetwater") { 
		quest::settimer("water",3); 
		quest::stoptimer("resetwater");
	}
}

sub EVENT_SAY {
	quest::stoptimer("water");
	quest::settimer("resetwater",13);
	if ($text=~/hail/i) {
		quest::say ("Why is it, everyone wishes to speak to you when you're trying to work $name?  Any ideas?  Thankfully you're not one of those type!");
	}
}