sub EVENT_DEATH_COMPLETE {

quest::signalwith(218093,2,1);

}





sub EVENT_SPAWN {

quest::settimer(88,7100);

}



sub EVENT_TIMER {

if($timer == 88) {
quest::stoptimer(88);
quest::depop_withtimer();



}

}