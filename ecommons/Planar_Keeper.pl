sub EVENT_SAY{
my $pop = quest::saylink ("I want to enter the Planes of Power?!",1);

if($text=~/hail/i && $qglobals{flagging} <= 1) {
plugin::Whisper("You must unlock Luclin before speaking with me, $name.");
 } 
 
 if($text=~/hail/i && $qglobals{flagging} >= 25)
 {
 plugin::Whisper("$pop");
 }
 
 }