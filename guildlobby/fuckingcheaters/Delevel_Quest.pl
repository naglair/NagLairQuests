sub EVENT_SAY
{
	if($status>=0)
	{
		if($text=~/yes/i && defined($qglobals{oldlevel}) && $qglobals{oldlevel} eq "hailed")
		{
			quest::setglobal("oldlevel","Said Yes",4,"S30");
			$client->Message(13,"ok please note that any pets or buffs you currently have will be
			removed but you can recast them after your level goes down");
			$client->Message(5,"you can change your mind if you want, if your ready to proceed just
			tell me what level you want to be set to");
		}
		elsif($text>0 && $text<$ulevel && $qglobals{oldlevel} eq "Said Yes")
		{
			quest::setglobal("oldlevel",$ulevel,4,"F");
			$client->Duck();
			#$client->Message(13,$client->GetEXP());
			quest::setglobal("oldexp",$client->GetEXP(),4,"F");
			quest::selfcast(1285);
			quest::selfcast(331);
			quest::selfcast(1792);
			quest::level($text);
			quest::setglobal("earnedexp",$client->GetEXP(),4,"F");
			$client->Stand();
		}
		elsif($qglobals{oldlevel} eq "Said Yes" && ($text<1 || $text>$ulevel) && !($text=~/hail/i))
		{
			$client->Message(13,"sorry that is not possible");
			quest::delglobal("oldlevel");
		}
		elsif(defined($qglobals{oldlevel}) && $ulevel<$qglobals{oldlevel} && $text=~/hail/i)
		{
			$originallevel=$qglobals{oldlevel};
			$client->Message(5,"Do you wish to restore your level back to $originallevel ?");
		}
		elsif(defined($qglobals{oldlevel}) && $ulevel<$qglobals{oldlevel} && $text=~/yes/i)
		{
			#quest::level($qglobals{oldlevel});
			$addedexp=$client->GetEXP()-$qglobals{earnedexp};
			$client->SetEXP($qglobals{oldexp},0,0);
			$originallevel=$qglobals{oldlevel};
			$client->Message(15,"You earned $addedexp XP while deleveled, I will add this to your real level");
			$client->AddEXP($addedexp);
			quest::delglobal("oldlevel");
			quest::delglobal("oldexp");
		}
		elsif($text=~/hail/i)
		{
			$client->Message(5,"Greetings $name, would you like to de-level yourself so you can
			play With your friends that may be a lower level than you?  You can return
			to your original level at any time");
			quest::setglobal("oldlevel","hailed",4,"S10");
		}
		elsif(!defined($qglobals{oldlevel}))
		{
			$client->Message(13,"if you where talking to me, You took to long to decide");
			$client->Message(13,"You will need to hail me again if you want to delevel");
		} 
	}
	else
	{
		$client->Message(10,"currently this function is in testing, you must be a GM to use it.");
	}
}
