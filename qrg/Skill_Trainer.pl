sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Greetings $name, Skills go up at 500% rate on Nagafen's Lair! Would you like me to [train] your first 25?") ;}

if ($text=~/train/i) { plugin::Whisper("Training your skills $name!");
quest::setallskills(25); }
}

