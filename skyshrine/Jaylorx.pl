sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Watch out in the water. Yelinak keeps a few small fish there.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Jaylorx