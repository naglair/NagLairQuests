#Scripted by Jaekob, PEQ Quest Team
#altar number door id 17-22
#17 left/counterclockwise
#statue number door id 23-34
#each temple is left to right numbers starting on left
#except temple two which is r to l

my $question = 0;
my $theme_question = 0;

sub EVENT_ENTERZONE {
  if (!defined $qglobals{primaldoor}) {
    #lock the primal door if it is unlocked and the quest global has expired.
    if ($entity_list->FindDoor(16)->GetLockPick() == 0) {
      $entity_list->FindDoor(16)->SetLockPick(-1);
    }
  } else {
    #unlock the primal door if it is locked and the global has not expired yet
    if ($entity_list->FindDoor(16)->GetLockPick() == -1) {
      $entity_list->FindDoor(16)->SetLockPick(0);
    }
  }
}

sub EVENT_CLICKDOOR {
  if ($doorid == 35 || $doorid == 36) { #uqua zone in
    my $InInstanceUqua = quest::GetInstanceID("uqua",0);
    if(!defined $qglobals{uqualockout}) {
      if($InInstanceUqua > 0){
        quest::MovePCInstance(292,$InInstanceUqua,-17,-7,-24);
      } else {
        $client->Message(13, "You are not a part of an instance!");
      }
    } else {
      $client->Message(13, "You have recently completed this raid, please come back at a later point");
    }
  } elsif(($doorid == 17) && ($yxtta_door == 0)) {
    $yxtta_door = 1;
    ASK_QUESTION();
  } elsif(($doorid == 18) && ($yxtta_door == 0)) {
    $yxtta_door = 1;
    ASK_QUESTION();
  } elsif(($doorid == 19) && ($yxtta_door == 0)) {
    $yxtta_door = 1;
     ASK_QUESTION();
  } elsif(($doorid == 20) && ($yxtta_door == 0)) {
    $yxtta_door = 1;
    ASK_QUESTION();
  } elsif(($doorid == 21) && ($yxtta_door == 0)) {
    $yxtta_door = 1;
    ASK_QUESTION();
  } elsif(($doorid == 22) && ($yxtta_door == 0)) {
    $yxtta_door = 1;
    ASK_QUESTION();
  } elsif(($doorid == 24) && ($yxtta_door == 1)) {
    if($question == 1) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 23) && ($yxtta_door == 1)) {
    if($question == 2) {
      $door += 1;  #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 25) && ($yxtta_door == 1)) {
    if($question == 3) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 26) && ($yxtta_door == 1)) {
    if($question == 4) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 28) && ($yxtta_door == 1)) {
    if($question == 5) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 27) && ($yxtta_door == 1)) {
    if($question == 6) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 30) && ($yxtta_door == 1)) {
    if($question == 7) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 29) && ($yxtta_door == 1)) {
    if($question == 8) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 32) && ($yxtta_door == 1)) {
    if($question == 9) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 31) && ($yxtta_door == 1)) {
    if($question == 10) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 34) && ($yxtta_door == 1)) {
    if($question == 11) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  } elsif(($doorid == 33) && ($yxtta_door == 1)) {
    if($question == 12) {
      $door += 1;   #door trigger
      ASK_QUESTION();
    } else {
      $attack += 1;   #trigger attack squad
      if($attack == 3) {
        STONE_ATTACK();
      }
    }
  }
}

sub STONE_ATTACK {
  my $silent_monolith = $entity_list->GetMobByNpcTypeID(291005);
  if ($silent_monolith) {
    my $hate_silent_monolith = $silent_monolith->CastToNPC();
    $hate_silent_monolith->AddToHateList($client, 1, 0, true);
  }
}

sub ASK_QUESTION {
  if($door == 12) {
    quest::targlobal("primaldoor",0,"M210",0,0,291);
    $entity_list->FindDoor(16)->SetLockPick(0);
    $client->Message(15,"The pathway is now clear, but your time is limited.");
  }
  $theme_question = int(rand(3)) + 1;
  if(($theme_question == 1) && ($door <=11)) {
    $question = int(rand(12)) +1;
    if($question == 1) {
      $client->Message(15,"Beginning new, the months refreshed, they youngest of us, I am but a babe.");
    } elsif($question == 2) {
      $client->Message(15,"I am second of us, but not the least, it is time that tells all, i hear it next.");
    } elsif($question == 3) {
      $client->Message(15,"I am 6 under noon."); 
    } elsif($question == 4) {
      $client->Message(15,"If time flies, add are to thee then move on to me."); 
    } elsif($question == 5) {
      $client->Message(15,"If my clock had your digits, I would be this.");
    } elsif($question == 6) {
      $client->Message(15,"You may find yourself in a pinch, should you fail to sea my sign.");
    } elsif($question == 7) {
      $client->Message(15,"Half past six, there are no tricks");
    } elsif($question == 8) {
      $client->Message(15,"My time is at the end of light and the edge of night");
    } elsif($question == 9) {
      $client->Message(15,"The river flows to be cradled in the sea. Time flows, but is lost. when is it devoured.");
    } elsif($question == 10) {
      $client->Message(15,"I am the hour that exists betwixt twice two primes.");
    } elsif($question == 11) {
      $client->Message(15,"It is your style and your gnomon that will help you find me. I am the hour of the sum of the constituents of relative term of terms.");
    } elsif($question == 12) {
      $client->Message(15,"I come last and in number am the greatest, yet when I have passed and all of my kind haven ended, I return in part in the number that follows me.");
    }
  }
  if(($theme_question == 2) && ($door <=11)) {
    $question = int(rand(12)) +1;
    if($question == 1) {
      $client->Message(15,"As far as needle is concerned. I am indeed in the right, and only just.");
    } elsif($question == 2) {
      $client->Message(15,"The lodestone seeks me not, but always drifts near, as near as the sunrise.");
    } elsif($question == 3) {
      $client->Message(15,"Read your lodestone and you will find that I am sinister of the sunrise, but only just.");
    } elsif($question == 4) {
      $client->Message(15,"Where your magnet points I will not be found. Seek me just beyond the sunrise.");
    } elsif($question == 5) {
      $client->Message(15,"I can bear a load of any stone, but have only one eye to see. Remove the of the majority of the eye from what you see.");
    } elsif($question == 6) {
      $client->Message(15,"You lay arrow straight, your face to face, find me at your right foot.");
    } elsif($question == 7) {
      $client->Message(15,"Spin you compass as you will, I shall be the rear still.");
    } elsif($question == 8) {
      $client->Message(15,"Be certain of your heading and make for the place twixt the sunset and the tail of the lodestone.");
    } elsif($question == 9) {
      $client->Message(15,"Face the setting sun and you will feel the heat of my presence. You grow colder as you follow guidance of the lodestone.");
    } elsif($question == 10) {
      $client->Message(15,"My aged father is the sun, my least cousin the lodestone.");
    } elsif($question == 11) {
      $client->Message(15,"When the needle is lessened by a triple net of degrees you shall find me.");
    } elsif($question == 12) {
      $client->Message(15,"If you are disarmed, watch your blade fall. Where it leads will answer all.");
    }
  }
  if(($theme_question == 3) && ($door <=11)) {
    $question = int(rand(12)) +1;
    if($question == 1) {
      $client->Message(15,"With the sun at its highest, everyone takes refuge. I am the first to come out after the time of rest.");
    } elsif($question == 2) {
      $client->Message(15,"Of thrushar I am the loved the most. To find me, you must understand the element and know the signs.");
    } elsif($question == 3) {
      $client->Message(15,"Trushor's servant of tail and fin, I am their sign. Seek me within.");
    } elsif($question == 4) {
      $client->Message(15,"Peril I am not, Remove the second in me and give me the first in aid, and with but little confusion I can be found");
    } elsif($question == 5) {
      $client->Message(15,"As each month passes, so I may");
    } elsif($question == 6) {
      $client->Message(15,"Seeking news of me, up and down. Tradition has me down, but the rising sun uplifts my spirits ever so slightly.");
    } elsif($question == 7) {
      $client->Message(15,"I am the month of a pair and hand.");
    } elsif($question == 8) {
      $client->Message(15,"If our schedules match, you shall find me in the most dignified company.");
    } elsif($question == 9) {
      $client->Message(15,"Creatures of Trushar are often protected by those that are my symbol.");
    } elsif($question == 10) {
      $client->Message(15,"I am eight in name, but not in sequence");
    } elsif($question == 11) {
      $client->Message(15,"I am the month that brings most of somthing new and a large portion of reminiscences.");
    } elsif($question == 12) {
      $client->Message(15,"When brightest day and darkest night are indistinguishable.");
    }
  }
}

sub EVENT_COMBINE_SUCCESS {
 if (($recipe_id == 10904) || ($recipe_id == 10905) || ($recipe_id == 10906) || ($recipe_id == 10907)) {
   $client->Message("The gem resonates with power as the shards placed within glow unlocking some of the stone's power. You were successful in assembling most of the stone but there are four slots left to fill, where could those four pieces be?");
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

}