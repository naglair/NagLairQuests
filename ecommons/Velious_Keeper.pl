

sub EVENT_SAY{

if($text=~/hail/i)
 {
plugin::Whisper("You must unlock Kunark before speaking with me, $name.");
 }
 }
  
 

