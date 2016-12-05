# #115038 Initiate Krostain

sub EVENT_SPAWN {
  quest::settimer(1,320); #Make him say speech every 5 mins
}

sub EVENT_TIMER {
  plugin::Whisper("Sir, you said Royt face. Guard Royt is just on the other side of this wall!");
}