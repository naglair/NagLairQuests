sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Wha?  Rarrrr!  Thalith try to fish but with [rrrats] and you botherring him. he cannot concentrate on water!  Go away. let Thalith fish!");
 }
 if ($text=~/rats/i) {
 plugin::Whisper(";Rats. Yes. Small, furry, brown, with teeth. They come, bite my paws, steal my bait, chew on lines and rods. They nasty little beasts and easy to kill but me not able to leave this position or fish get away. Errr. Maybe you keep the rats away? You kill baddest rat, Sharptooth. You bring me his tooth. I be very happy.")
 }
 sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 6347 => 1)) {
    plugin::Whisper("You.. You kill the rats? Errr. Thalith thanks you. Here. Take this. It's good luck charm I've had for years.");
    quest::summonitem(1061);
    quest::faction( 175, 10);
  }   
 }
}
#END of FILE Zone:kerraridge  ID:74089 -- Thalith_Mamluk 

