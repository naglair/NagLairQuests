# #115204 Templar Franchus

sub EVENT_SPAWN {
  quest::settimer(1,480); #Make him say speech every 8 mins
}

sub EVENT_TIMER {
  plugin::Whisper("Ok lads, remember what I taught you now. Thrust, block, slash...");
}