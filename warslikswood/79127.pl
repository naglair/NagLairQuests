# BeginFile: warslikswood\79127.pl (Raving Goblinmaster - Quest)
# Berserker Epic 1.0 (Trial of Mastery) - Raving Goblinmaster - Warsliks Wood 
# Modified by: ghanja for independence from grid and improve reliability

sub EVENT_SPAWN {
	$npc->SetEntityVariable("stage",0);
	$npc->SetEntityVariable("goblinsup",-1);
}

sub EVENT_TIMER {
	if ($timer == 1) {
		if ($x == 43 && $y == 950) {
			if ($npc->GetEntityVariable("stage") == 1) {
				quest::moveto(174, 1178, -213, 0, 1);
			}
		}
		elsif ($x == 174 && $y == 1178) {
			if ($npc->GetEntityVariable("stage") == 1) {
				quest::moveto(77, 1419, -213, 0, 1);
			}
		}
		elsif ($x == 77 && $y == 1419) {
			if ($npc->GetEntityVariable("stage") == 1) {
				quest::moveto(0, 1510, -212, 0, 1);
			}
		}
		elsif ($x == 0 && $y == 1510) { ## wave point 1
			if ($npc->GetEntityVariable("stage") == 1) {
				SpawnFiveGoblins();
				$npc->SetEntityVariable("stage",2);
			}
			elsif (($npc->GetEntityVariable("stage") == 2) && ($npc->GetEntityVariable("goblinsup") == 0)) {
				$npc->SetEntityVariable("stage",3);
				quest::moveto(280, 1477, -213, 0, 1);
			}
		}
		elsif ($x == 280 && $y == 1477) {
			if ($npc->GetEntityVariable("stage") == 3) {
				quest::moveto(280, 1736, -213, 0, 1);
			}
		}
		elsif ($x == 280 && $y == 1736) {
			if ($npc->GetEntityVariable("stage") == 3) {
				quest::moveto(48, 1752, -213, 0, 1);
			}
		}
		elsif ($x == 48	&& $y == 1752) { ## wave point 2
			if ($npc->GetEntityVariable("stage") == 3) {
				SpawnFiveGoblins();
				$npc->SetEntityVariable("stage",4);
			}
			elsif (($npc->GetEntityVariable("stage") == 4) && ($npc->GetEntityVariable("goblinsup") == 0)) {
				$npc->SetEntityVariable("stage",5);
				quest::moveto(42, 2051, -213, 0, 1);
			}
		}
		elsif ($x == 42 && $y == 2051) {
			if ($npc->GetEntityVariable("stage") == 5) {
				quest::moveto(281, 2103, -198, 0, 1);
			}
		}
		elsif ($x == 281 &&	$y == 2103) { ## wave point 3
			if ($npc->GetEntityVariable("stage") == 5) {
				SpawnFiveGoblins();
				$npc->SetEntityVariable("stage",6);
			}
			elsif (($npc->GetEntityVariable("stage") == 6) && ($npc->GetEntityVariable("goblinsup") == 0)) {
				$npc->SetEntityVariable("stage",7);
				quest::moveto(40, 2305, -203, 0, 1);
			}
		}
		elsif ($x == 40 && $y == 2305) {
			if ($npc->GetEntityVariable("stage") == 7) {
				quest::moveto(375, 2361, -212, 0, 1);
			}
		}
		elsif ($x == 375 && $y == 2361) { ## wave point 4
			if ($npc->GetEntityVariable("stage") == 7) {
				SpawnFerociousGoblins();
				$npc->SetEntityVariable("stage",8);
			}
			elsif (($npc->GetEntityVariable("stage") == 8) && ($npc->GetEntityVariable("goblinsup") == 0)) {
				$npc->SetEntityVariable("stage",9);
				quest::stoptimer(2);
				quest::moveto(265, 2535, -213, 0, 1); # working our way to final spot
			}
		}
		elsif ($x == 265 && $y == 2535) {
			quest::moveto(228, 2828, -214, 0, 1);
		}
		elsif ($x == 228 && $y == 2828) {
			quest::moveto(226, 2779, -214, 0, 1);
		}
		elsif ($x == 226 && $y == 2779) {
			quest::moveto(269, 3276, -213, 0, 1);
		}
		elsif ($x == 269 && $y == 3276) {
			quest::moveto(436, 3422, -213, 0, 1);
		}
		elsif ($x == 436 && $y == 3422) {
			quest::moveto(586, 3577, -213, 0, 1);
		}
		elsif ($x == 586 && $y == 3577) {
			quest::moveto(738, 3626, -208, 0, 1); # almost there
		}
		elsif ($x == 738 && $y == 3626) {
			quest::moveto(760, 3549, -200.4, 0, 1); # move to last spot
		}
		elsif ($x == 760 && $y == 3549) {
			$npc->SetEntityVariable("stage",-1); # sanity item
			quest::stoptimer(1);
			quest::stoptimer(2);
			quest::spawn2(79126,0,0,$x,$y,$z,0); #Raving Goblinmaster - KOS
			quest::depop();
		}
	}
	if ($timer == 2) {
		EventFailure();
	}
}

sub EVENT_SAY {
	if (($text=~/ready/i) && (plugin::check_hasitem($client, 60210)) && ($npc->GetEntityVariable("stage") == 0)) {
		$npc->SetEntityVariable("questdoer",$charid);
		quest::shout(	"Why you come here is a mystery to me. If you are brave, chase me as I flee. Watch to ".
						"the front and behind. To your right and left do not be blind!");
		quest::settimer(1,2);
		quest::settimer(2,600); ## 10 minute to kill all waves
		$npc->SetEntityVariable("stage",1);
		quest::moveto(43, 950, -213, 0, 1);
	}
}

sub EVENT_SIGNAL {
	if ($signal == 1) { #Signal from Lurking Hopeful
		quest::shout("Yes, I see you, you wander in the trees. If you cross me, I will bring you to your knees.");
	}
	elsif ($signal == 2) {
		$npc->SetEntityVariable("goblinsup",($npc->GetEntityVariable("goblinsup") - 1));
	}
	elsif ($signal == 8) {
		EventFailure();
	}
}

sub EventFailure {
	quest::stoptimer(1);
	quest::stoptimer(2);
	quest::shout("Aha! My minions have defeated you!");
	quest::signal(79129);
	quest::signal(79128);
	quest::depop();    
}

sub SpawnFerociousGoblins {
	$npc->SetEntityVariable("goblinsup",3);
	quest::spawn2(79128,0,0,($x - 5),($y + 5),$z,0);
	quest::spawn2(79128,0,0,($x - 5),($y - 5),$z,0);
	quest::spawn2(79128,0,0,($x),($y + 5),$z,0);
}

sub SpawnFiveGoblins {
	$npc->SetEntityVariable("goblinsup",5);
	quest::spawn2(79129,0,0,($x + 5),($y + 5),$z,0);
	quest::spawn2(79129,0,0,($x + 5),($y - 5),$z,0);
	quest::spawn2(79129,0,0,($x - 5),($y + 5),$z,0);
	quest::spawn2(79129,0,0,($x - 5),($y - 5),$z,0);
	quest::spawn2(79129,0,0,($x),($y + 5),$z,0);
}
#EndFile: warslikswood\79127.pl (Raving Goblinmaster - Quest)