sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Grikk.. Please leave me be. I but a humble forager. My people are starving.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13375 => 1)) {
    plugin::Whisper("Grrrikk.. This is Groak's vial!! He must be in danger. Here. Return this liquid to him. Be quick!");
    quest::faction(106,20);
    quest::summonitem(13376);
  }
  else {
    plugin::Whisper("Grikk.. I do not want this.");
    plugin::return_items(\%itemcount);
  }
}