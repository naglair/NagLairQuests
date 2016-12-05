sub EVENT_SAY { 
  if($text=~/Hail/i){
    plugin::Whisper("And hello to you traveler. Beyond this gate lies the Shadeweavers Thicket. You had best go armed. for the [Claw Beasts] have been attacking merchants regularly.");
  }
  if($text=~/what claw beasts?/i){
    plugin::Whisper("A true horror. they are mindless predators and quite large to boot. These beasts have massive razor sharp teeth that can rip your arm off cleanly."); 
  }
}

sub EVENT_ITEM {
  # takes repair order from master Barkhem
  if ($itemcount{29803}==1) {
    plugin::Whisper("Oh this old shield does fine, but I guess if Barkhem needs to break in a new apprentice, it does have some dings in it. Thank you, my friend.");
    quest::summonitem(29804); # koby dented shield
  } 
  # You receive Koby's Dented Shield. Take the dented shield and place it into a forge with your Vah Shir Apprentice Mallet. This creates Koby's Immaculate Shield (the mallet will be returned). Give this shield back to Jasir to receive Koby's Work Order. 
  if ($itemcount{29805}==1) { # koby immaculate shield
    plugin::Whisper("Tip-top work! Barkhem has done well by himself choosing you for an apprentice."); 
    quest::summonitem(29806); # koby work order
  }
}
# END of FILE Zone:sharvahl  ID:7039 -- Khala_Dun_Koby 
