

sub EVENT_SAY{

if($text=~/hail/i && $qglobals{flagging} < 3) {
plugin::Whisper ("You must unlock Luclin Before you can Unlock the planes.If you have already completed my tasks, hand me the token I gave you and I will unlock the planes for you");
 } 
 
 if($text=~/hail/i && $qglobals{flagging} == 3) {
plugin::Whisper ("Would you like to [enter the planes] ? If you have already completed my tasks, hand me the token I gave you and I will unlock the planes for you - WARNRNING - If you cannot click the 'Planar Entry Token' link in the quest menu you will not receive a token, but you will get the credit!");
 } 
 
  if($text=~/hail/i && $qglobals{flagging} >=3 && quest::istaskcompleted(233)) {
  quest::setglobal("flagging", 4, 5, "F");
	$client->Message(15,"Looks like you have completed the task! I'll flag you for the planes! You may now enter the Plane of Knowledge! *just leave the guild lobby out of the door to the south*");
                       
 }
 
 if($text=~/hail/i && $qglobals{flagging} >=4 )  {
 
plugin::Whisper ("You have already unlocked the planes. ");
 } 
 
 
 if($text=~/GMHack/i && $qglobals{flagging} <4 && $status >199) {
  quest::setglobal("flagging", 4, 5, "F");
plugin::Whisper("Using Special GM Hacking powers to set your flagging status to the planes!");
                     
 }
 
 
 if($text=~/testflag/i && quest::istaskcompleted(233)) {
  quest::setglobal("flagging", 4, 5, "F");
plugin::Whisper("Using Special  test powers to set your flagging status to the planes!");
                       
 }

 
if($text=~/enter the planes/i)
        {
                if(!quest::istaskactive(233))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Kings of Luclin, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(233);
               }
        }

}



sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount,2393 => 1)) {

if ($qglobals{flagging} >=4 ) {
	$client->Message(15,"You are already flagged to enter the planar zones");
	quest::summonitem(2393);
							}
	if ($qglobals{flagging} <4 ) {
	$client->Message(15,"You are now flagged to enter the planar zones");
 quest::setglobal("flagging", 4, 5, "F");
 quest::summonitem(2393);
								} 
 

}
if(plugin::check_handin(\%itemcount,2415 => 1)) {

if ($qglobals{flagging} >=4 ) {
	$client->Message(15,"You are already flagged to enter the planar zones");
	quest::summonitem(2393);
							}
	if ($qglobals{flagging} <4 ) {
	$client->Message(15,"You are now flagged to enter the planar zones");
 quest::setglobal("flagging", 4, 5, "F");
 quest::summonitem(2393);
								} 
 

}

else {
plugin::return_items(\%itemcount);

}
}








 