

sub EVENT_SAY{

if($text=~/hail/i && $qglobals{flagging} == 0) {
plugin::Whisper ("You must unlock Kunark Before you can Unlock velious.If you have already completed my tasks, hand me the token I gave you and I will unlock velious for you");
 } 
 
 if($text=~/hail/i && $qglobals{flagging} == 1) {
plugin::Whisper ("Would you like to [enter velious] ? If you have already completed my tasks, hand me the token I gave you and I will unlock velious for you");
 } 
 
 if($text=~/hail/i && $qglobals{flagging} >=2 )  {
 
plugin::Whisper ("You have already unlocked velious.");


 } 
 


 
if($text=~/enter velious/i && $qglobals{flagging} == 1)
        {
                if(!quest::istaskactive(222))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Kings of Velious, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(222);
               }
        }

}


sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount,1118 => 1)) {

if ($qglobals{flagging} >=2 ) {
	$client->Message(15,"You are already flagged to enter velious zones");
	quest::summonitem(1118);
							}
	if ($qglobals{flagging} <2 ) {
	$client->Message(15,"You are now flagged to enter velious zones");
 quest::setglobal("flagging", 2, 5, "F");
 quest::summonitem(1118);
								} 
 

}
if(plugin::check_handin(\%itemcount,1801 => 1)) {

if ($qglobals{flagging} >=2 ) {
	$client->Message(15,"You are already flagged to enter velious zones");
	quest::summonitem(1801);
							}
	if ($qglobals{flagging} <2 ) {
	$client->Message(15,"You are now flagged to enter velious zones");
 quest::setglobal("flagging", 2, 5, "F");
 quest::summonitem(1118);
								} 
 

}

else {
plugin::return_items(\%itemcount);
}
}







