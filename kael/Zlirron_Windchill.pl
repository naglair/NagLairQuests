sub EVENT_AGGRO {
  plugin::Whisper("Your bones will be crushed by the Kromrif of Kael Drakkel!");
}

sub EVENT_DEATH_COMPLETE {
  quest::spawn2(113534,29,0,1130.3,-749.6,-125.6,126.6);
}