
sub EVENT_SAY{

my $Kunark = quest::saylink ("Kunark", 1);

if($text=~/hail/i && $qglobals{flagging} <= 1) {
 #quest::setglobal("flagging", 0, 5, "F");
plugin::Whisper ("SSSSKKKTthhhhhhhh..... I hear you want to enter [$Kunark]? If you have already completed my tasks, hand me the token i gave you and I will unlock kunark for you");
 } 
 
 
 if($text=~/hail/i && $qglobals{flagging} >=1 ) {
 
plugin::Whisper ("SSSSKKKTthhhhhhhh..... Congratulationsssss. You have already unlocked kunark. ");
 } 
 
 
if($text=~/kunark/i && $qglobals{flagging} < 1)
        {
                if(!quest::istaskactive(17))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Kings of the old world, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(17);
                }
        }


}




sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount,32428 => 1)) {

if ($qglobals{flagging} >=1 ) {
	$client->Message(15,"You are already flagged to enter kunark zones");
	quest::summonitem(32428);
							}
	if ($qglobals{flagging} <1 ) {
	$client->Message(15,"You are now flagged to enter kunark zones");
 quest::setglobal("flagging", 1, 5, "F");
 quest::summonitem(32428);
								} 
 

}

if(plugin::check_handin(\%itemcount,1800 => 1)) {

if ($qglobals{flagging} >=1 ) {
	$client->Message(15,"You are already flagged to enter kunark zones");
	quest::summonitem(1800);
							}
	if ($qglobals{flagging} <1 ) {
	$client->Message(15,"You are now flagged to enter kunark zones");
 quest::setglobal("flagging", 1, 5, "F");
 quest::summonitem(32428);
								} 
 

}

else {
plugin::return_items(\%itemcount);
plugin::Whisper("I don't need this!");
}
}
