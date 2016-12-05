sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Yes?"); #Text made up
  }
  if($text=~/fenn kaedrick/i) {
    plugin::Whisper("The dungeon is located on the lower levels of Highkeep. Do not venture there. It is off limits to visitors. If you wish to get someone released, you will have to speak with the jail clerk just before you get to the dungeon.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I do not want that.");
  plugin::return_items(\%itemcount);
}