sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Hello, $name. I would be careful around the cubes. Rumor is they've gotten some kind of intelligence now.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Anex