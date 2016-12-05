sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Shh , I think I hear the kobolds.");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}