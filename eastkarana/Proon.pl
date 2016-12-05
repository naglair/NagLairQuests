sub EVENT_SPAWN {
quest::settimer("proon", 10800);
}

sub EVENT_AGGRO {
plugin::Whisper("WHAT YOU DONE TO MY KID!?! ME SQUASH YOU!!!!");
}

sub EVENT_DEATH_COMPLETE {
plugin::Whisper("ARGH!!!... Broon? Broon? That you? What all this bright light? I coming son. argh.. argh.. Don't cry.. Poppa here now.. argh..");
}

sub EVENT_TIMER {
quest::depop();
}