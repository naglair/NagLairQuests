sub EVENT_SPAWN

{
quest::settimer(1,600);
}

sub EVENT_SAY {

if($text=~/Hail/)
	{
	quest::setglobal("credit",1,5,"F");
	$client->Message(4,"You Have Been flagged for The Second Raid Zone!");
	$client->Message(315,"Take this Head back to my spirit...I May find some peace");
	quest::summonitem("1389");
	}

}


sub EVENT_TIMER {

if($timer == 1)
	{
	quest::depop;
	}
}
