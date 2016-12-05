##Brewworks familiar from Station Store. Converts water flasks to ale.##

sub EVENT_SPAWN{
   plugin::Whisper("Brewworks Unit ready to convert Water Flasks to Ale, Master.");
}

sub EVENT_ITEM{
   if(plugin::check_handin(\%itemcount, 13006 => 1)){
      plugin::Whisper("Ale brewed, Master.");
      quest::summonitem(13039);
   }
   else{
      plugin::return_items(\%itemcount);
      plugin::Whisper("I cannot brew anything from this.");
   }
}