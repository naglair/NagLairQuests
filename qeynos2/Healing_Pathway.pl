sub EVENT_SAY{

if($text=~/hail/i && $qglobals{healing} <= 1) {
 #quest::setglobal("flagging", 0, 5, "F");
plugin::Whisper ("You May use me to specialize in Healing Arts. Would you like to specialize in the [healing] arts?");
 } 
 
 
 if($text=~/hail/i && $qglobals{healing} >=1 ) {
 
plugin::Whisper ("SSSSKKKTthhhhhhhh..... Congratulationsssss. You have already unlocked kunark. ");
 } 
 
 
if($text=~/healing/i && $qglobals{healing} < 1)
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

if ($qglobals{healing} >=1 ) {
	$client->Message(15,"You are already flagged to enter kunark zones");
	quest::summonitem(32428);
							}
	if ($qglobals{healing} <1 ) {
	$client->Message(15,"You have now gained the power to use magic");
 quest::setglobal("healing", 1, 5, "F");
 quest::summonitem(9993);
								} 
 

}

if(plugin::check_handin(\%itemcount,1800 => 1)) {

if ($qglobals{healing} >=1 ) {
	$client->Message(15,"You are already flagged to enter kunark zones");
	quest::summonitem(32428);
							}
	if ($qglobals{healing} <1 ) {
	$client->Message(15,"You are now flagged to enter kunark zones");
 quest::setglobal("healing", 1, 5, "F");
 quest::summonitem(32428);
								} 
 

}

else {
plugin::return_items(\%itemcount);
plugin::Whisper("I don't need this!");
}
}
