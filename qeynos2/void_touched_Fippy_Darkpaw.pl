sub EVENT_COMBAT {
	if($combat_state == 1) {
		quest::settimer("add_timer", 60);
		quest::stoptimer("reset_mob");
	} elsif($combat_state == 0) {
		quest::stoptimer("add_timer");
		quest::settimer("reset_mob", 60);
	}
}

sub EVENT_AGGRO {
   plugin::Whisper("You have trespassed long enough on Sabertooth land!");
}
   
sub EVENT_SPAWN {
      quest::shout("BBBBAAAARRRKKKK!!!!! You humans will pay for ruining our homeland! GRRRRR!! Family Darkpaw of the Sabretooth Clan will slay you all!! BARK!");
      quest::setnexthpevent(76);
	  
}

sub EVENT_HP {
	if($hpevent == 76) {
	quest::emote("roars in pain!");
	quest::spawn2(999475,0,0,$x,$y - 175,$z,$h);
	quest::spawn2(999475,0,0,$x,$y - 185,$z,$h);
	quest::spawn2(999475,0,0,$x + 190,$y,$z,$h);
	quest::spawn2(999475,0,0,$x - 350,$y,$z,$h);
	quest::spawn2(999475,0,0,$x,$y - 290,$z,$h);
	quest::setnexthpevent(51);
	} elsif($hpevent == 51) {
		quest::emote("roars in pain!");
		quest::setnexthpevent(26);
		quest::spawn2(999475,0,0,$x,$y - 175,$z,$h);
		quest::spawn2(999475,0,0,$x,$y - 185,$z,$h);
		quest::spawn2(999475,0,0,$x + 190,$y,$z,$h);
		quest::spawn2(999475,0,0,$x - 350,$y,$z,$h);
		quest::spawn2(999475,0,0,$x,$y - 290,$z,$h);
	} elsif($hpevent == 26) {
		quest::emote("roars in pain!");
		quest::spawn2(999475,0,0,$x,$y - 175,$z,$h);
		quest::spawn2(999475,0,0,$x,$y - 185,$z,$h);
		quest::spawn2(999475,0,0,$x + 190,$y,$z,$h);
		quest::spawn2(999475,0,0,$x - 350,$y,$z,$h);
		quest::spawn2(999475,0,0,$x,$y - 290,$z,$h);
	} 
}

sub EVENT_TIMER {
	if($timer eq "add_timer") {
		$chance = int(rand(100));
		if($chance >= 76) {
			quest::spawn2(999475,0,0,$x + 100,$y,$z,$h);
			quest::spawn2(999475,0,0,$x - 100,$y,$z,$h);
		}
		
		elsif($chance >= 46) {
			quest::spawn2(999475,0,0,$x + 100,$y,$z,$h);
			quest::spawn2(999475,0,0,$x - 100,$y,$z,$h);
			quest::spawn2(999475,0,0,$x,$y - 100,$z,$h);
		}
		
		elsif($chance >= 26) {
			quest::spawn2(999475,0,0,$x + 200,$y,$z,$h);
			quest::spawn2(999475,0,0,$x - 200,$y,$z,$h);
			quest::spawn2(999475,0,0,$x,$y - 200,$z,$h);
			quest::spawn2(999475,0,0,$x,$y + 200,$z,$h);
		}
		
		elsif($chance >= 8) {
			quest::spawn2(999475,0,0,$x,$y - 175,$z,$h);
			quest::spawn2(999475,0,0,$x,$y - 185,$z,$h);
			quest::spawn2(999475,0,0,$x + 190,$y,$z,$h);
			quest::spawn2(999475,0,0,$x - 350,$y,$z,$h);
			quest::spawn2(999475,0,0,$x,$y - 290,$z,$h);
		}
	}
	if($timer eq "reset_mob") {
		quest::depopall(999475);
		quest::stoptimer("reset_mob");
	}
}