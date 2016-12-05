my $counter = 0;
my $RangedItemID = 0;
my $SecondaryItemID = 0;

sub EVENT_ENTERZONE {
  if (!defined($qglobals{destoff})) {
    quest::settimer(1,90);
    AURA();
  }
}

sub EVENT_TIMER {
  if (!defined($qglobals{destoff})) {
    AURA();
  }
}

sub EVENT_CLICKDOOR {
  $check_gasnpc1 = $entity_list->GetMobByNpcTypeID(292051);
  $check_gasnpc2 = $entity_list->GetMobByNpcTypeID(292052);
  if ($doorid == 9) {
      if($check_gasnpc1 == 0) {
        quest::forcedooropen(9);
        }
      elsif (($oncursor{67707} && ($qglobals{gaschmb1} == 1)) || ($oncursor{67708} && ($qglobals{gaschmb1} == 2)) || ($oncursor{67709} && ($qglobals{gaschmb1} == 3)) || ($oncursor{67710} && ($qglobals{gaschmb1} == 4)) || ($qglobals{gaschmb1complete} == 1)) {
         quest::forcedooropen(9);
         quest::setglobal("gaschmb1complete",1,3,"H6");
         }
    else {
      quest::selfcast(5054);
    }
  }
  if (($doorid == 8) && (defined($qglobals{gaschmb1})) && !($check_gasnpc1 == 0)) {
    quest::selfcast(5054);
  }
  if ($doorid == 12) {
      if($check_gasnpc2 == 0) {
        quest::forcedooropen(12);
        }
    elsif (($oncursor{67707} && ($qglobals{gaschmb2} == 1)) || ($oncursor{67708} && ($qglobals{gaschmb2} == 2)) || ($oncursor{67709} && ($qglobals{gaschmb2} == 3)) || ($oncursor{67710} && ($qglobals{gaschmb2} == 4)) || ($qglobals{gaschmb1complete} == 1)) {
      quest::forcedooropen(12);
      quest::setglobal("gaschmb2complete",1,3,"H6");
    }
    else {
      quest::selfcast(5054);
    }
  }
  if (($doorid == 11) && (defined($qglobals{gaschmb2})) && !($check_gasnpc1 == 0)) {
    quest::selfcast(5054);
  }
  if ($doorid == 4) {  #need expedition lockout at this door click until possible 24 hour timer until instance request 
    $raid = $entity_list->GetRaidByClient($client);
    if ($raid) {
      for ($count = 0; $count < $raid->RaidCount(); $count++) {
        push (@player_list, $raid->GetMember($count)->GetName());
      }
    }
    foreach $player (@player_list) {
      $pc = $entity_list->GetClientByName($player);
      $charid = $pc->CharacterID();
      quest::targlobal("uqualockout", 1, "H24", 291113, $charid, 291);
    }
  }
  if ($doorid == 3) {
    if (defined($qglobals{uquaragedoor}) && ($qglobals{uquaragedoor} == 1)) {
      quest::forcedooropen(3);
    }
  }
  if ($doorid == 2) {
    if (defined($qglobals{uquafurydoor}) && ($qglobals{uquafurydoor} == 1)) {
      quest::forcedooropen(2);
    }
  }
}

sub EVENT_SIGNAL {
  if ($signal == 1) {
    $counter += 1;
  }
  if ($counter == 2) {
    if (!defined($qglobals{destper})) {
      quest::stoptimer(1);
      quest::setglobal("destoff",1,3,"H6");
    }
    $client->Message(15,"The Altar of Fury and Altar of Rage hum in harmony. A bright flash of light illuminates the room momentarily, causing the tendrils of murky shadow to dissipate. The Aura of Destruction has faded away.");
    quest::ze(15,"A strange voice shouts, You fools! While you may have stopped the rituals of fury and rage, you are still too late to prevent me from transferring the power of Trushar into our stone guardian. If you wish death, then continue into my chambers!");
  }
}

sub AURA {
  $RangedItemID = $client->GetItemIDAt(14);
  $SecondaryItemID = $client->GetItemIDAt(11);
  if (defined($qglobals{destper})) {
    quest::selfcast(5051);
  }
  elsif ($RangedItemID == 67736 || $RangedItemID == 67737 || $RangedItemID == 67738 || $RangedItemID == 67739 || $SecondaryItemID == 67736 || $SecondaryItemID == 67737 || $SecondaryItemID == 67738 || $SecondaryItemID == 67739) {
    $client->Message(15,"You feel protected from the Aura of Destruction.");
  }
  else {
    quest::selfcast(5051);
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
