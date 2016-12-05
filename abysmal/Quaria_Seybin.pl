sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Have you seen the Grozmok Stone?  It is actually aboard this ship. Turns out Morden and his crew from long ago got it from the Broken Skull clan of trolls!");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}