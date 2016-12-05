sub EVENT_COMBINE_SUCCESS {
  my $x = $client->GetX();
  my $y = $client->GetY();
  my $z = $client->GetZ();
  my $h = $client->GetHeading();

  if ($recipe_id == 10344) {
    $client->Message(1,"With the final piece in place, the clockwork scout's eyes light up as it comes to life.");
    quest::spawn2(290059,0,0,$x,$y,$z,$h); #Clockwork Scout Model XIII
  }
  if (($recipe_id == 10904) || ($recipe_id == 10905) || ($recipe_id == 10906) || ($recipe_id == 10907)) {
    $client->Message(15,"The gem resonates with power as the shards placed within glow unlocking some of the stone's power. You were successful in assembling most of the stone but there are four slots left to fill, where could those four pieces be?");
  }
  if ($recipe_id == 10903) {
    if (($class eq "Bard") || ($class eq "Beastlord") || ($class eq "Paladin") || ($class eq "Ranger") ||  ($class eq "Shadowknight")) {
      quest::summonitem(67666);
      quest::summonitem(67704);
    }
    elsif (($class eq "Warrior") || ($class eq "Monk") || ($class eq "Berserker")  || ($class eq "Rogue"))  {
      quest::summonitem(67665);
      quest::summonitem(67704);
    }
    elsif (($class eq "Cleric") || ($class eq "Shaman") || ($class eq "Druid")) {
      quest::summonitem(67667);  
      quest::summonitem(67704);
    }
    elsif (($class eq "Necromancer") || ($class eq "Wizard") || ($class eq "Enchanter")  || ($class eq "Magician")) {
      quest::summonitem(67668);
      quest::summonitem(67704);
    }
    $client->Message(1,"Success");
  }
  if ($recipe_id == 10346) {
    if (($class eq "Bard") || ($class eq "Beastlord") || ($class eq "Paladin") || ($class eq "Ranger") ||  ($class eq "Shadowknight")) {
      quest::summonitem(67661);
      quest::summonitem(67704);
    }
    elsif (($class eq "Warrior") || ($class eq "Monk") || ($class eq "Berserker")  || ($class eq "Rogue"))  {
      quest::summonitem(67660);
      quest::summonitem(67704);
    }
    elsif (($class eq "Cleric") || ($class eq "Shaman") || ($class eq "Druid")) {
      quest::summonitem(67662);
      quest::summonitem(67704);
    }
    elsif (($class eq "Necromancer") || ($class eq "Wizard") || ($class eq "Enchanter")  || ($class eq "Magician")) {
      quest::summonitem(67663);
      quest::summonitem(67704);
    }
    $client->Message(1,"Success");
  }
  if ($recipe_id == 10334) {
    if (($class eq "Bard") || ($class eq "Beastlord") || ($class eq "Paladin") || ($class eq "Ranger") ||  ($class eq "Shadowknight")) {
      quest::summonitem(67654);
      quest::summonitem(67704);
    }
    elsif (($class eq "Warrior") || ($class eq "Monk") || ($class eq "Berserker")  || ($class eq "Rogue"))  {
      quest::summonitem(67653);
      quest::summonitem(67704);
    }
    elsif (($class eq "Cleric") || ($class eq "Shaman") || ($class eq "Druid")) {
      quest::summonitem(67655);
      quest::summonitem(67704);
    }
    elsif (($class eq "Necromancer") || ($class eq "Wizard") || ($class eq "Enchanter")  || ($class eq "Magician")) {
      quest::summonitem(67656);
      quest::summonitem(67704);
    }
    $client->Message(1,"Success");
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
