sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Move along.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Sentry_Iglotn