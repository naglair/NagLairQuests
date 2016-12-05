

sub EVENT_SAY{
my $luc = quest::saylink ("I want to enter Luclin!",1);
if($text=~/hail/i && $qglobals{flagging} <= 1) {
plugin::Whisper("You must unlock Velious before speaking with me, $name.");
 } 
 
 if($text=~/hail/i && $qglobals{flagging} == 2) {
plugin::Whisper("I see that you're ready to venture onto Luclin");
plugin::Whisper("$luc")
 } 
 
 if($text=~/hail/i && $qglobals{flagging} >=3 )  {
 
plugin::Whisper("You have already unlocked Luclin, $name. ");
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
	$client->Message(15,"You are already flagged to enter Luclin zones");
	quest::summonitem(1382);
							}
	if ($qglobals{flagging} <3 ) {
	$client->Message(15,"You are now flagged to enter Luclin zones");
 quest::setglobal("flagging", 3, 5, "F");
 quest::summonitem(1382);
								} 
 

}

if(plugin::check_handin(\%itemcount,1802 => 1)) {

if ($qglobals{flagging} >=3 ) {
	$client->Message(15,"You are already flagged to enter Luclin zones");
	quest::summonitem(1802);
							}
	if ($qglobals{flagging} <3 ) {
	$client->Message(15,"You are now flagged to enter Luclin zones");
 quest::setglobal("flagging", 3, 5, "F");
 quest::summonitem(1382);
								} 
 

}

else {
plugin::return_items(\%itemcount);
}
}













                
       