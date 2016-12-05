sub EVENT_SAY 
{
my $buffs = quest::saylink ("buffs",1);
my $check = quest::saylink ("check", 1);
my $deposit = quest::saylink ("deposit", 1);

my $hpbuff = quest::saylink ("Temperance", 1);
my $haste = quest::saylink ("Speed of Salik", 1);
my $ds = quest::saylink ("Shield of Nettles", 1);
my $regen = quest::saylink ("Spirit of Perseverance", 1);
my $works = quest::saylink ("Works", 1);

if($text=~/hail/i)
	{
	plugin::Whisper("Ahh, $name. Would you like some [$buffs]?      --     If so you require credit. Would you like to [$check] your credit or  learn how to [$deposit] money into your account?");
	}
if($text=~/check/i)
	{
	if (defined($qglobals{credit})) {
      quest::setglobal("credit",$qglobals{credit}+$cash,0,"F");
	  	plugin::Whisper("Your credit is : $qglobals{credit} - Would you like [$buffs]?");
    }
    else {
      quest::setglobal("credit",$cash,0,"F");
	  	plugin::Whisper("You don't appear to have a line of credit with us. Would you like to [$deposit] some coin and get started??");
    }
	}
if($text=~/deposit/i)
	{
	plugin::Whisper("Just hand me money and I'll deposit it into your private account.");
	}
if($text=~/buffs/i)
	{
	plugin::Whisper("I can cast [$hpbuff] for 65 credits, [$haste] for 50 credits, [$ds] for 60 credits, [$regen] for 45 credits, or get the [$works] for only 200 credits, that's a 10% savings! ");
	}
if($text=~/Temperance/i)
	{
	if(($qglobals{credit})>=65) 
		{
	plugin::Whisper("Enjoy your buff!");
	quest::selfcast(5257);
	quest::setglobal("credit",$qglobals{credit}-65,0,"F");
		}
		if(($qglobals{credit})<65) 
		{
	plugin::Whisper("You only have $qglobals{credit} credits. That's not enough!");
		}
		
	}
	if($text=~/Speed of Salik/i)
	{
	if(($qglobals{credit})>=50) 
		{
	plugin::Whisper("Enjoy your buff!");
	quest::selfcast(5507);
	quest::setglobal("credit",$qglobals{credit}-50,0,"F");
		}
		if(($qglobals{credit})<50) 
		{
	plugin::Whisper("You only have $qglobals{credit} credits. That's not enough!");
		}
		
	}
	
		if($text=~/Shield of Nettles/i)
	{
	if(($qglobals{credit})>=60) 
		{
	plugin::Whisper("Enjoy your buff!");
	quest::selfcast(5358);
	quest::setglobal("credit",$qglobals{credit}-60,0,"F");
		}
		if(($qglobals{credit})<60) 
		{
	plugin::Whisper("You only have $qglobals{credit} credits. That's not enough!");
		}
		
	}
	
if($text=~/Spirit of Perseverance/i)
	{
	if(($qglobals{credit})>=45) 
		{
	plugin::Whisper("Enjoy your buff!");
	quest::selfcast(5393);
	quest::setglobal("credit",$qglobals{credit}-45,0,"F");
		}
		if(($qglobals{credit})<45) 
		{
	plugin::Whisper("You only have $qglobals{credit} credits. That's not enough!");
		}
		
	}
		
	if($text=~/Works/i)
	{
	if(($qglobals{credit})>=200) 
		{
	plugin::Whisper("Enjoy your buffs!");
	quest::selfcast(5393);
		quest::selfcast(5358);
			quest::selfcast(5507);
				quest::selfcast(5257);
				
	quest::setglobal("credit",$qglobals{credit}-200,0,"F");
		}
		if(($qglobals{credit})<200) 
		{
	plugin::Whisper("You only have $qglobals{credit} credits. That's not enough!");
		}
		
	}
	
}


sub EVENT_ITEM {
  my $cash = $platinum * 1 + $gold * .1 + $silver * .01 + $copper *.001;

  if ($cash > 0) {
    if (defined($qglobals{credit})) {
      quest::setglobal("credit",$qglobals{credit}+$cash,0,"F");
	        #plugin::Whisper("$qglobals{credit}");
    }
    else {
      quest::setglobal("credit",$cash,0,"F");
	  #plugin::Whisper("Your credit is now : $qglobals{credit}");
    }
  }
  else {
    plugin::return_items(\%itemcount);
	 quest::givecash($copper,$silver,$gold,$platinum );
  }
  plugin::Whisper("Thanks for the $platinum plat, $gold gold, $silver silver, and $copper copper - It has been deposited in your account");
}