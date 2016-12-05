sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hey, don't you try to get me recruited into that adventuring nonsense.  I came aboard to work and work only.  Now scram!");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}