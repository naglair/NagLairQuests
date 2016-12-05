sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Gimme duffynitey rocks! Me crushem GUUD!!!");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 10073 => 1)) { #Dufrenite
    quest::emote("takes the dufrenite and crushes it with his bare hands.");
    plugin::Whisper("Here ya go!");
    quest::summonitem(19050); #Crushed Dufrenite
  }
  else {
    plugin::Whisper("What dis?");
    plugin::return_items(\%itemcount);
  }
}
#END of FILE Zone:lakerathe  ID:51073 -- Grud