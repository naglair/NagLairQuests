

sub EVENT_SAY{

if($text=~/hail/i && $qglobals{flagging} <= 1) {
plugin::Whisper ("You must unlock kunark and velious Before you can Unlock velious.If you have already completed my tasks, hand me the token I gave you and I will unlock luclin for you");
 } 
 
 if($text=~/hail/i && $qglobals{flagging} == 2) {
plugin::Whisper ("Would you like to [enter luclin] ? If you have already completed my tasks, hand me the token I gave you and I will unlock luclin for you");
 } 
 
 if($text=~/hail/i && $qglobals{flagging} >=3 )  {
 
plugin::Whisper ("You have already unlocked luclin. ");
 } 
 


 
if($text=~/enter luclin/i && $qglobals{flagging} == 2)
        {
                if(!quest::istaskactive(178))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Lords of Velious, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(178);
               }
        }

}



sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount,1382 => 1)) {

if ($qglobals{flagging} >=3 ) {
	$client->Message(15,"You are already flagged to enter luclin zones");
	quest::summonitem(1382);
							}
	if ($qglobals{flagging} <3 ) {
	$client->Message(15,"You are now flagged to enter luclin zones");
 quest::setglobal("flagging", 3, 5, "F");
 quest::summonitem(1382);
								} 
 

}

if(plugin::check_handin(\%itemcount,1802 => 1)) {

if ($qglobals{flagging} >=3 ) {
	$client->Message(15,"You are already flagged to enter kunark zones");
	quest::summonitem(1802);
							}
	if ($qglobals{flagging} <3 ) {
	$client->Message(15,"You are now flagged to enter kunark zones");
 quest::setglobal("flagging", 3, 5, "F");
 quest::summonitem(1382);
								} 
 

}

else {
plugin::return_items(\%itemcount);
}
}













                
       