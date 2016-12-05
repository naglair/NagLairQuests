sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Well met friend lovely day isn't it?"); }
 if($text =~ /What armor/i) {
	plugin::Whisper("Yes Shelia told me I may have some people asking me about the armor I have. Are ya a bard?");
 }
 if($text =~ /I am a bard./i) {
   plugin::Whisper("Good, I have a [mask], [cloak], [gauntlets], [gorget], [girdle], and a [sword].");
 }
 if($text =~ /cloak/i) {
   plugin::Whisper("For the cloak you must gather these things. An Astral jewel, a mark of melody, an onyx studded medal, and a porous rock.");
 }
 if($text =~ /gauntlets/i) {
   plugin::Whisper("For the gauntlets you must gather these things. A sun jewel, a mark of anthems, and a fire emerald studded medal.");
 }
 if($text =~ /girdle/i) {
   plugin::Whisper("For the girdle you must gather these things. A star jewel, a mark of composition, a peridot studded medal, and a seared brand.");
 }
 if($text =~ /gorget/i) {
   plugin::Whisper("For the gorget you must gather these things a moon jewel, a mark of psalms, and a black pearl studded medal.");
 }
 if($text =~ /mask/i) {
   plugin::Whisper("For the mask you must gather these things a meteor jewel, a mark of tenor, and a star sapphire studded medal.");
 }
 if($text =~ /sword/i) {
   plugin::Whisper("For the sword you must gather these things a cloud jewel, a mark of chants, a red stone idol, and a moonstone studded medal.");
 }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 4494 => 1, 5393 => 1, 5394 => 1, 5395 => 1)) {
    quest::summonitem(3928); #cloak
    plugin::Whisper("Thank you. May your voice be ever true."); 
    quest::exp(50000); #exp amount?
  }
  elsif (plugin::check_handin(\%itemcount, 5397 => 1, 5396 => 1, 4488 => 1)) {
    quest::summonitem(3929); #gaunts 
    }
  elsif (plugin::check_handin(\%itemcount, 5474 => 1, 5475 => 1, 5476 => 1, 4490 => 1)) {
    quest::summonitem(3931); #girdle
  }
  elsif (plugin::check_handin(\%itemcount, 5399 => 1, 5398 => 1, 4489 => 1)) {
    quest::summonitem(3930); #gorget
  }
  elsif (plugin::check_handin(\%itemcount, 5349 => 1, 4493 => 1, 5354 => 1)) {
    quest::summonitem(3910); #mask
  }
  elsif (plugin::check_handin(\%itemcount, 4491 => 1, 5477 => 1, 5479 => 1, 5478 => 1)) {
    quest::summonitem(3932); #sword
  }
}

#END of FILE Zone:twilight  ID:170051 -- Brolan_Geppal 

