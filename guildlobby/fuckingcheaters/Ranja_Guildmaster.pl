sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 1096 => 1)) {
    plugin::Whisper("The turn in worked!");quest::summonitem(20487); quest::summonitem(20488);
  }
  else {
plugin::return_items(\%itemcount);
plugin::Whisper("I don't need this!");
}
}

