sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("May I assist you with something?");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:sharvahl  ID:Not_Found -- Spiritcaller_Gaarus