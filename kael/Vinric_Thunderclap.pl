sub EVENT_AGGRO {
  plugin::Whisper("Your bones will be crushed by the Kromrif of Kael Drakkel!");
}

sub EVENT_DEATH_COMPLETE {
  quest::spawn2(113528,28,0,1130.3,-933.2,-125.6,126.6);
}