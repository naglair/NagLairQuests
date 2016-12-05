sub EVENT_SPAWN {
plugin::Whisper("Why have you awakened me mortals?");
}

sub EVENT_DEATH_COMPLETE {
  quest::signalwith(278125,93,0);
  }