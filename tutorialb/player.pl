sub EVENT_ENTERZONE 
{
	if(!defined $qglobals{tutbind} && $ulevel == 1) 
	{
		quest::selfcast(2049);
		quest::setglobal("tutbind",1,1,"D30");
	}
	
	if(!defined $qglobals{tutpop}) 
	{
		quest::popup("Join the revolution!", "Welcome to the Revolt! You have been given two new quests:
			<br><br><c \"#FFFF00\">Rally with Rahtiz:</c><br>If you are ready to begin fighting for the revolt, 
			hail Guard Rahtiz and see where you are needed.<br><br><c \"#FFFF00\">Basic Training:</c><br>If you 
			would like more training on the finer points of Everquest, speak with Arias and he will direct you to other knowledgeable 
			members of the slave revolt.<br><br><c \"#F07F00\">Click 'OK' to continue.</c>");
			quest::assigntask(22);
			quest::assigntask(23);
			quest::setglobal("tutpop",1,1,"D30");
	}
	
	if($ulevel > 15 && $status < 80)
	{
		$client->Message(15,"You are too high in level to be in this zone.");
		quest::selfcast(2433);
	}  
}

sub EVENT_TASK_STAGE_COMPLETE 
{
	if ($task_id == 34)
	{
		quest::ze(15, "A cheer arises from the slaves as the last of the Kobold overseers fall.");
	}
  if ($task_id == 28 && $activity_id == 1) {
    $client->Message(0,"Vahlara bows as you return. 'Just in time. Many are wounded and more arrive by the hour. If you can find any Gloomingdeep silk, bring it to me and I can reward you with more burlap clothing. It's not much, but it's nicer than the rags these kobolds left us with.'");
  }
} 

sub EVENT_CLICKDOOR {
	my $d_id = ($doorid % 256);
	if($d_id == 11)
	{
		my $s_zone = $client->GetStartZone();
		if($s_zone == 9)
		{
			quest::movepc(9,-60.9,-61.5,-24.9);
		}
		elsif($s_zone == 19)
		{
			quest::movepc(19,-98.4,11.5,3.1);
		}
		elsif($s_zone == 24)
		{
			quest::movepc(24,-309.8,109.6,23.1);
		}
		elsif($s_zone == 25)
		{
			quest::movepc(25,-965.3,2434.5,5.6);
		}
		elsif($s_zone == 29)
		{
			quest::movepc(29,12.2,-32.9,3.1);
		}
                elsif($s_zone == 40)
		{
			quest::movepc(40,156.9,-2.9,31.1);
		}
                elsif($s_zone == 41)
		{
			quest::movepc(41,-499,2.9,-10.9);
		}
                elsif($s_zone == 42)
		{
			quest::movepc(42,-968.9,891.9,-52.8);
		}
		elsif($s_zone == 45)
		{
			quest::movepc(45,-343,189,-38.22);
		}
		elsif($s_zone == 49)
		{
			quest::movepc(49,520.1,235.4,59.1);
		}
		elsif($s_zone == 50)
		{
			quest::movepc(50,560,-2234,3);
		}
		elsif($s_zone == 52)
		{
			quest::movepc(52,1.1,14.5,3.1);
		}
		elsif($s_zone == 54)
		{
			quest::movepc(54,-197,27,-0.7);
		}
		elsif($s_zone == 55)
		{
			quest::movepc(55,7.6,489.0,-24.9);
		}
		elsif($s_zone == 61)
		{
			quest::movepc(61,26.3,14.9,3.1);
		}
		elsif($s_zone == 68)
		{
			quest::movepc(68,-214.5,2940.1,0.1);
		}
		elsif($s_zone == 75)
		{
			quest::movepc(75,200,800,3.39);
		}
		elsif($s_zone == 106)
		{
			quest::movepc(106,-415.7,1276.6,3.1);
		}
		elsif($s_zone == 155)
		{
			quest::movepc(155,105.6,-850.8,-190.4);
		}
		else
		{
			quest::movepc(202,-55,44,-158.81);
		}
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
