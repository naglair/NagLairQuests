sub EVENT_ITEM {
  plugin::Whisper("I do not want this.");
  plugin::return_items(\%itemcount);
}

sub EVENT_SIGNAL {
  plugin::Whisper("What a glorious machine the cargo clockwork is!!");
  quest::signal(56105,1);
}