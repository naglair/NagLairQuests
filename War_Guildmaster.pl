sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 1096 => 1)) {
    plugin::Whisper("The turn in worked!");quest::summonitem(10908); quest::summonitem(17859);
  }
  else {
plugin::return_items(\%itemcount);
plugin::Whisper("I don't need this!");
}
}
