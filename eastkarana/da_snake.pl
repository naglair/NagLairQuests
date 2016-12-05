sub EVENT_TIMER {
	quest::stoptimer("roam");
	plugin::RandomRoam(100,100);
	quest::settimer("roam",(quest::ChooseRandom(10..40)));
}

sub EVENT_SPAWN {
	quest::settimer("roam",5);
}
	