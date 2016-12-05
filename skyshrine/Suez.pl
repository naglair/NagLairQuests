sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Yes? Can't you see we are busy here.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Suez