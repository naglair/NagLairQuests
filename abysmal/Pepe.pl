# Pepe's Got a Brand New Bag
# Created by Gonner

sub EVENT_SAY {
  if($text=~/hail/i){
    plugin::Whisper("I miss Lamontt.");  
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 55571 => 1)) { # Lamontt
    plugin::Whisper("Here tools. Hope boss not get mad.' Pepe begins to hug Lamontt.");  
    quest::exp(300000);
    quest::summonitem(55573); # Scraping Tool
  }
  else {
    plugin::return_items(\%itemcount);
  }
}
# END of FILE Zone:abysmal ID:279261 -- Pepe.pl