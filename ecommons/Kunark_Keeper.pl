sub EVENT_SAY
{
my $ent = quest::saylink ("I wish to enter Kunark!");

if($text=~/hail/i && $qglobals{flagging} <= 1 && $qglobals{paid} >= 1)
	{
	
plugin::Whisper("Greetin`s $name, Heard ya wanna enter the landssss of Kunark?");
 $client->Message(13,"$ent");
 
		
	}
	elsif($text=~/hail/i && $qglobals{flagging} <= 1 && $qglobals{paid} <= 1)
		{
			plugin::Whisper("I require a thousand platinum pieces to prove you're worthy for my test");
		}
		

	
 if($text=~/hail/i && $qglobals{flagging} >= 1 && $qglobals{paid} == 1 ) 
	{
	plugin::Whisper("SSSSKKKTthhhhhhhh..... Congratulationsssss. You have already unlocked kunark. ");
	} 
 
if($text=~/enter kunark/i && $qglobals{flagging} < 1 && $qglobals{paid} == 1)
        {
                if(!quest::istaskactive(2001))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Kings of the old world, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(2001);
                }
        }


}




sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount,32428 => 1)) {

	if ($qglobals{flagging} >=1 )
	{
	$client->Message(15,"You are already flagged to enter kunark zones");
	quest::summonitem(32428);
	}
	
	if ($qglobals{flagging} <1 ) 
	{
	$client->Message(15,"You are now flagged to enter kunark zones");
	quest::setglobal("flagging", 1, 5, "F");
	quest::summonitem(32428);
	} 
	
	
	
 

}

if($platinum == 1000)
	{
	quest::setglobal("paid",1,5,"f");
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
