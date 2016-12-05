# Guild Hall Regen Pool Script - Player Portion

sub EVENT_SIGNAL {
  if ($signal == 1) {
    quest::settimer("DoRegen", 6);
  }
  if ($signal == 2) {
    quest::stoptimer("DoRegen");
  }
}

sub EVENT_ZONE {
  quest::stoptimer("DoRegen"); #Stop the timer if they zone
}

sub EVENT_TIMER {
  quest::stoptimer("DoRegen");
  my $RegenPercent = 10; # Set Regen Percent per tic here
  if ($client) {
    my $HPRatio = $client->GetHPRatio();
    if ($HPRatio < 100) {
      my $HPMax = $client->GetMaxHP();
      my $HPNew = (($HPRatio + $RegenPercent) / 100) * $HPMax;
      $client->SetHP($HPNew);
    }
    my $ManaRatio = $client->GetManaRatio();
    if ($ManaRatio < 100) {
      my $ManaMax = $client->GetMaxMana();
      my $ManaNew = (($ManaRatio + $RegenPercent) / 100) * $ManaMax;
      $client->SetMana($ManaNew);
    }
    my $EnduranceRatio = $client->GetEnduranceRatio();
    if ($EnduranceRatio < 100) {
      my $EnduranceMax = $client->GetMaxEndurance();
      my $EnduranceNew = (($EnduranceRatio + $RegenPercent) / 100) * $EnduranceMax;
      $client->SetEndurance($EnduranceNew);
    }
    quest::settimer("DoRegen", 6);
  }
}

sub EVENT_POPUPRESPONSE {
  if ($popupid == 666) { #hateplaneb
    quest::movepc(186,-393,656,3);
  }
  if ($popupid == 674) { #airplane
    quest::movepc(71,539,1384,-664);
  }
  if ($popupid == 15891) { #dragonscale
    #quest::movepc(442,-1954,3916,19);
  }
  if ($popupid == 2708) { #northkarana
    quest::movepc(13,1209,-3685,-5);
  }
  if ($popupid == 4176) { #ecommons
    quest::movepc(22,-140,-1520,3);
  }
  if ($popupid == 534) { #lavastorm
    quest::movepc(27,460,460,-86);
  }
  if ($popupid == 2707) { #tox
    quest::movepc(38,-916,-1510,-33);
  }
  if ($popupid == 2706) { #gfaydark
    quest::movepc(54,-441,-2023,4);
  }
  if ($popupid == 2709) { #dreadlands
    quest::movepc(86,9658,3047,1052);
  }
  if ($popupid == 2284) { #iceclad
    quest::movepc(110,385,5321,-17);
  }
  if ($popupid == 2031) { #coboltscar
    quest::movepc(117,-1634,-1065,299);
  }
  if ($popupid == 3615) { #twilight
    quest::movepc(170,-1028,1338,39);
  }
  if ($popupid == 3794) { #stonebrunt
    quest::movepc(100,673,-4531,0);
  }
  if ($popupid == 6180) { #wallofslaughter
    #quest::movepc(300,-943,13,130);
  }
  if ($popupid == 5733) { #barindu
    quest::movepc(283,209,-515,-119);
  }
  if ($popupid == 8237) { #eastkorlach
    #quest::movepc(362,-750,-1002,48);
  }
  if ($popupid == 8967) { #arcstone
    #quest::movepc(369,1630,-279,5);
  }
  if ($popupid == 999) { #mesa
    #quest::movepc(397,-85,-2050,19);
  }
  if ($popupid == 1000) { #guild banner
    #not implemented yet
  }
  if ($popupid == 416) { #kattacastrum
    #quest::movepc(416,-2,-425,-19);
  }
  if ($popupid == 20543) { #potimea
    quest::movepc(219,0,110,8);
  }
  if ($popupid == 21986) { #brellsrest
    #quest::movepc(480,-23,-619,36);
  }
}



 sub EVENT_ENTERZONE {
  if(($qglobals{donator}) >= 1 || $status >= 8) {
	$client->Message(15," Welcome! If you have suggestions to improve this zone, please contact sabrina!");
 
	 #quest::movepc(241,251,33,5);
		}
		if(($qglobals{donator})<1) {
	 #$client->Message(15," not flagged to enter kunark zone.'");
	 #$client->Message(15,"A Terrible Voice Speaks, 'You are not a donator, begone from here!'");
 	 #quest::movepc(344, 252, 411, 2);
		}
    
 }

sub EVENT_LEVEL_UP
{
	quest::scribespells($ulevel);
	quest::traindiscs($ulevel); 
	$myclass=$class;
	if($myclass eq "Shadowknight")
	{
		if($ulevel==6){quest::setskill("10",($ulevel));}
		if($ulevel==10){quest::setskill("19",($ulevel));}
		if($ulevel==17){quest::setskill("34",($ulevel));}
		if($ulevel==20){quest::setskill("20",($ulevel));}
		if($ulevel==30){quest::setskill("37",($ulevel));}
		if($ulevel==40){quest::setskill("16",($ulevel));}
	}
	
	if($myclass eq "Warrior")
	{
		if($ulevel==6)
		{
			quest::setskill("10",($ulevel));
			quest::setskill("19",($ulevel));
		}
		if($ulevel==10){quest::setskill("34",($ulevel));}
		if($ulevel==13){quest::setskill("22",($ulevel));}
		if($ulevel==15){quest::setskill("20",($ulevel));}
		if($ulevel==25){quest::setskill("37",($ulevel));}
		if($ulevel==35){quest::setskill("16",($ulevel));}
	}
	if($myclass eq "Necro"||$myclass eq "Enchanter"||
		$myclass eq "Magician"||$myclass eq "Wizard")
	{
		if($ulevel==16)
		{
			quest::setskill("58",($ulevel));
		}
		if($ulevel==20){quest::setskill("43",($ulevel));}
		if($ulevel==20){quest::setskill("44",($ulevel));}
		if($ulevel==20){quest::setskill("45",($ulevel));}
		if($ulevel==20){quest::setskill("46",($ulevel));}
		if($ulevel==20){quest::setskill("47",($ulevel));}
		if($ulevel==20){$client->Message(5,"Remember you can only get 1 specializtion
		over 50, the first one over 50 becomes your specialization");}

		if($ulevel==22){quest::setskill("19",($ulevel));}
	}
	if($myclass eq "Cleric"){if($ulevel==25){quest::setskill("10",($ulevel));}}
	if($myclass eq "Shaman"){if($ulevel==25){quest::setskill("59",($ulevel));}}
	if($myclass eq "Druid")
	{
		if($ulevel==5){quest::setskill("27",($ulevel));}
		if($ulevel==20){quest::setskill("53",($ulevel));}
	}
	if($myclass eq "Druid"||$myclass eq "Shaman"||$myclass eq "Cleric")
	{
		if($ulevel==15){quest::setskill("19",($ulevel));}
		if($ulevel==30){quest::setskill("43",($ulevel));}
		if($ulevel==30){quest::setskill("44",($ulevel));}
		if($ulevel==30){quest::setskill("45",($ulevel));}
		if($ulevel==30){quest::setskill("46",($ulevel));}
		if($ulevel==30){quest::setskill("47",($ulevel));}
		if($ulevel==30){$client->Message(5,"Remember you can only get 1 specialization
		over 50, the first one over 50 becomes your specialization");}
	}
	if($myclass eq "Rogue")
	{
		if($ulevel==4){quest::setskill("19",($ulevel));}
		if($ulevel==5){quest::setskill("35",($ulevel));}
		if($ulevel==7){quest::setskill("48",($ulevel));}
		if($ulevel==10){quest::setskill("62",($ulevel));}
		if($ulevel==10){quest::setskill("8",($ulevel));}
		if($ulevel==12){quest::setskill("34",($ulevel));}
		if($ulevel==12){quest::setskill("39",($ulevel));}
		if($ulevel==13){quest::setskill("22",($ulevel));}
		if($ulevel==15){quest::setskill("17",($ulevel));}
		if($ulevel==16){quest::setskill("20",($ulevel));}
		if($ulevel==18){quest::setskill("6",($ulevel));}
		if($ulevel==20){quest::setskill("56",($ulevel));}
		if($ulevel==22){quest::setskill("71",($ulevel));}
		if($ulevel==27){quest::setskill("16",($ulevel));}
	}
	if($myclass eq "Ranger")
	{
		if($ulevel==5){quest::setskill("30",($ulevel));}
		if($ulevel==8){quest::setskill("19",($ulevel));}
		if($ulevel==10){quest::setskill("42",($ulevel));}
		if($ulevel==17){quest::setskill("22",($ulevel));}
		if($ulevel==18){quest::setskill("34",($ulevel));}
		if($ulevel==20){quest::setskill("20",($ulevel));}
		if($ulevel==35){quest::setskill("17",($ulevel));}
		if($ulevel==35){quest::setskill("37",($ulevel));}
	}
	if($myclass eq "Monk")
	{
		if($ulevel==3){quest::setskill("39",($ulevel));}
		if($ulevel==5){quest::setskill("38",($ulevel));}
		if($ulevel==8){quest::setskill("42",($ulevel));}
		if($ulevel==10){quest::setskill("52",($ulevel));}
		if($ulevel==12){quest::setskill("11",($ulevel));}
		if($ulevel==15){quest::setskill("20",($ulevel));}
		if($ulevel==17){quest::setskill("28",($ulevel));}
		if($ulevel==18){quest::setskill("71",($ulevel));}
		if($ulevel==20){quest::setskill("23",($ulevel));}
		if($ulevel==25){quest::setskill("21",($ulevel));}
		if($ulevel==27){quest::setskill("17",($ulevel));}
		if($ulevel==30){quest::setskill("26",($ulevel));}
		if($ulevel==35){quest::setskill("37",($ulevel));}
	}
	if($myclass eq "Bard")
	{
		if($ulevel==5){quest::setskill("70",($ulevel));}
		if($ulevel==8){quest::setskill("49",($ulevel));}
		if($ulevel==10){quest::setskill("31",($ulevel));}
		if($ulevel==10){quest::setskill("35",($ulevel));}
		if($ulevel==11){quest::setskill("12",($ulevel));}
		if($ulevel==12){quest::setskill("27",($ulevel));}
		if($ulevel==14){quest::setskill("54",($ulevel));}
		if($ulevel==15){quest::setskill("62",($ulevel));}
		if($ulevel==17){quest::setskill("22",($ulevel));}
		if($ulevel==17){quest::setskill("42",($ulevel));}
		if($ulevel==20){quest::setskill("17",($ulevel));}
		if($ulevel==24){quest::setskill("39",($ulevel));}
		if($ulevel==25){quest::setskill("29",($ulevel));}
		if($ulevel==26){quest::setskill("71",($ulevel));}
		if($ulevel==35){quest::setskill("53",($ulevel));}
		if($ulevel==53){quest::setskill("34",($ulevel));}
		if($ulevel==58){quest::setskill("37",($ulevel));}
	}
	if($myclass eq "Paladin")
	{
		if($ulevel==6){quest::setskill("10",($ulevel));}
		if($ulevel==10){quest::setskill("19",($ulevel));}
		if($ulevel==17){quest::setskill("34",($ulevel));}
		if($ulevel==20){quest::setskill("20",($ulevel));}
		if($ulevel==30){quest::setskill("37",($ulevel));}
		if($ulevel==40){quest::setskill("16",($ulevel));}
	}
	if($myclass eq "Beastlord")
	{
		if($ulevel==5){quest::setskill("30",($ulevel));}
		if($ulevel==10){quest::setskill("19",($ulevel));}
		if($ulevel==17){quest::setskill("22",($ulevel));}
		if($ulevel==25){quest::setskill("11",($ulevel));}
		if($ulevel==40){quest::setskill("37",($ulevel));}
	}
	if($myclass eq "Berserker")
	{
		if($ulevel==6){quest::setskill("74",($ulevel));}
		if($ulevel==10){quest::setskill("19",($ulevel));}
		if($ulevel==12){quest::setskill("34",($ulevel));}
		if($ulevel==15){quest::setskill("20",($ulevel));}
		if($ulevel==30){quest::setskill("37",($ulevel));}
		if($ulevel==35){quest::setskill("16",($ulevel));}
	}


}
