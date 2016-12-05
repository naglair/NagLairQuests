#NPCNAME: Arch-Lich Xoran
#For Planar Progression
#Drops 3x Phylacterys for Flag quest

sub EVENT_SPAWN {
quest::modifynpcstat("special_attacks", "SERTMCNIDfdL");
}

sub EVENT_COMBAT {
if ($combat_state == 1) {
	quest::shout("Petulant Mortals!  You can not Kill that which is already dead!  Come forth my Undead Army!  Rend these Mortals Asunder!");
	quest::setnexthpevent(75);
	 } elsif ($combat_state == 0) {
			quest::shout("Fools!  It will take more than that to Defeat me!");
			quest::depopall(999260);
			 }
}



sub EVENT_HP {
if ($npc && $entity_list) {

	if ($hpevent <= 75 && $hpevent >= 74) { 
	     quest::shout("Come My Minion!");
		 quest::spawn2(999260, 0, 0, $x,$y,$z,$h);
		 quest::setnexthpevent(50);
		}
	elsif ($hpevent <= 50 && $hpevent >= 49) { #2 adds spawn
		    quest::shout("Come Minions, we shall destroy these mortals!");
			quest::spawn2(999260, 0, 0, $x,$y,$z,$h);
			quest::spawn2(999260, 0, 0, $x,$y,$z,$h);
			
			quest::setnexthpevent(25);
		}
	elsif ($hpevent <= 25 && $hpevent >= 24) { 
			 quest::shout("I Will Not be Defeated like this!");
			 quest::spawn2(999260, 0, 0, $x,$y,$z,$h);
			 quest::setnexthpevent(10);
		}
	elsif ($hpevent <= 10 && $hpevent >= 9) {
		   my $check_adds = $entity_list->GetMobByNpcTypeID(999260); #check and see if Adds are still up
		   if ($check_adds) {
			  $check = 1;
			  }
			  if ($check == 1) {
				  quest::shout("Foolish Mortals!  I am Too powerful for you!  Grant me your Lifeforce my minions!");  #if adds still up he heals to full
				  quest::emote("$npcname drains the essences of his Chained Souls and grows stronger!");
				  $npc->SetHP($npc->GetMaxHP());
				  quest::depopall(999260);
				  quest::modifynpcstat("AC", "500");
				  quest::modifynpcstat("min_dmg", "105");
				  }
				  if ($check == 0) {
						 quest::shout("No I will NOT end this way!");
						 }
		   
		}
	}
}

sub EVENT_SLAY {
my $soul = 999260;
quest::shout("Foolish Mortal!  Your soul is mine!");
quest::spawn2($soul, 0, 0, $x,$y,$z,$h);
}

sub EVENT_DEATH_COMPLETE {
my $npcname = $npc->GetCleanName();
my $timestamp = localtime(time);
my $string = "$timestamp : $name of $uguild_id";
quest::write("kill_logs/ArchLich.txt", $string);
quest::shout2("No!  How is this Possible?");
quest::depopall(999260);
}

	
