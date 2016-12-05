sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("You have no business here. Get lost!"); #Text made up
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I do not want that.");
  plugin::return_items(\%itemcount);
}

sub EVENT_ATTACK {
  plugin::Whisper("Prepare to die!");
}

sub EVENT_SIGNAL {
  quest::depop();
}