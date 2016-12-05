sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Why. hello there fellow scholar!  Don't you just love books?  I am quite a bookworm myself.  I could read forever!  I am currently working my way through the 'T's.");
}
if($text=~/Erud's Tonic/i){
plugin::Whisper("Erud's Tonic! That is none of your concern!"); 
 }
}

sub EVENT_ITEM {
   if(plugin::check_handin(\%itemcount, 13121 => 1)) {
      plugin::Whisper("It's about time you figured it out, genius! Maybe you should spend more time in the library. Here, take this tonic and get out of here before they see me giving it to you and turn us both inside out.");
      quest::summonitem(13118);
      quest::faction(380,10);
      quest::exp(100);
   }
plugin::return_items(\%itemcount);
}
#END of FILE Zone:erudnext  ID:98036 -- Sinnkin_Highbrow 

