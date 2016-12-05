sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Greetings $name, I can scribe all of your [spells] up to level 10 for free!") ;}

if ($text=~/spells/i) { plugin::Whisper("Scribing your spells $name!");
quest::scribespells(10); }
}

