sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("I'm afraid I can't speak right now, $name. I'm waiting for someone very important to arrive."); }
}
