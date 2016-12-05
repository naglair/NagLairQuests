sub EVENT_SAY {
my $spirit = quest::saylink ("spirit",1);
my $boots = quest::saylink ("boots",1);

if(($text=~/hail/i) && ($ulevel<=30)) {

	plugin::Whisper("Hail, $name. If you must travel a great distance, I can surely cast [$spirit] of Bih`Li on you before you go. It will let you travel much faster on foot. Come back when you are more expereinced. I might have some work for you.");
}
if(($text=~/hail/i) && ($ulevel>30)) {
	plugin::Whisper("Hail, $name. I can cast [$spirit] of Bih`Li on you. If you'd rather, I can help you make your own pair of [$boots] which let you travel quickly without the constant annoyance of spells from me! ");
}
if($text=~/spirit/i){
	plugin::Whisper("Travel safe, $name.");
	quest::selfcast(2524);
}

if($text=~/Spirit/i){
	plugin::Whisper("Travel safe, $name.");
	quest::selfcast(2524);
}

if(($text=~/boots/i) && ($ulevel>30)) {
	plugin::Whisper("Gather some supplies for me and I'll craft the perect boots for you! I'll need Hill Giant toes, Fire Giant Toes, Ice Giant toes and Cyclops toes! ");
}

}

sub EVENT_ITEM
{
if(plugin::check_handin(\%itemcount,16539 => 1,16540 => 1, 16541 => 1, 16543 =>1)) {
plugin::Whisper("Enjoy your boots! ");
quest::summonitem("2300");
quest::exp(10000);
}
 
else {
plugin::return_items(\%itemcount);
plugin::Whisper("I think you misread my instructions. you did want a reward , right? THEN FOLLOW MY DIRECTIONS!");
}
} 
