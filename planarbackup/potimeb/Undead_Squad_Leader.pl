sub EVENT_AGGRO {
  plugin::Whisper("Can you even fathom the infinite torture and suffering in store for you? I thought not.");
}

sub EVENT_DEATH_COMPLETE {
  quest::signalwith(223154,11070,0);
  plugin::Whisper("This is not the first time I have been 'killed', and it will certainly not be the last. Be always on your guard, mortals.");
}

sub EVENT_SIGNAL {
  if ($signal == 66){
     quest::depop();
}
 }
