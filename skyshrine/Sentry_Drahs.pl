sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("I would be careful wandering the maze. Many have gotten lost and never come out the other end.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Sentry_Drahs