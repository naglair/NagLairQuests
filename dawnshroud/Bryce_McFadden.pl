sub EVENT_SAY { 
if($text=~/Hail/i){
    plugin::Whisper("What are you doing here? Can't you see we're trying to get some rest. It's not easy trying to find [Gant's Remains].");
}
if($text=~/what gant/i){
    plugin::Whisper("We're looking for Gant's Remains. We've heard that they can be found somewhere in the caves not to far from here. Though. it's not easy getting into those caves. Those dawnhoppers are a vicious bunch. Maybe you'd like to help us. If you can find Gant's Remains bring it back to me and you'll get a handsome reward."); 
}
 }
sub EVENT_ITEM {
if (plugin::check_handin(\%itemcount, 30173 => 1)) {
    plugin::Whisper("Thanks!");
    quest::summonitem(29897);
}
 }
#END of FILE Zone:dawnshroud  ID:174090 -- Bryce_McFadden 

