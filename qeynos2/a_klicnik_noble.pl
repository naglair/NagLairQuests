sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Dare you Hail me, futile $race !! Begone!");
quest::attack($char); }
}


