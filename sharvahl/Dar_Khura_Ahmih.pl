sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Well met, friend. May I be of assistance?");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:sharvahl  ID:Not_Found -- Dar_Khura_Ahmih