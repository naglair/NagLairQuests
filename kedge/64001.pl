#new Phiny Script
#Summons 1 Seashorse adds @ 20%, Every 20% from 80% - 20 does an AE dispell Stops Dispell @ 20.
sub EVENT_KILLED_MERIT
{

quest::setglobal("Phinigel Autropos",1,5,'F');

$client->Message(13,"You have received a flag!");
}
sub EVENT_SPAWN {
quest::modifynpcstat("special_attacks", "SErFUMC");
}

sub EVENT_COMBAT {
my $npcname = $npc->GetCleanName();

if ($combat_state == 1) {
	quest::shout("How dare you tresspass in my Kingdom!  Prepare to DIE!");
	quest::setnexthpevent(80);
	}
	elsif ($combat_state == 0) {
			quest::depopall(999261);
			quest::shout("You were Fools to Mess with me!");
			quest::stoptimer("Fail");
			}
}

sub EVENT_HP {
my $npcname = $npc->GetCleanName();
if ($npc && $entity_list) {
if ($hpevent <= 80 && $hpevent >= 79) {
	my $Target = $npc->GetTarget();
	if ($Target) {
	quest::shout("Fools I am Not the Weakling I Once Was!");
	$npc->SpellFinished(976,$Target); #dispell
	quest::setnexthpevent(60);
	}
}
elsif ($hpevent <= 60 && $hpevent >= 59) {
	my $Target = $npc->GetTarget();
	if ($Target) {
		quest::shout("Your Magic is of No Use against me Air-Breathers!");
		$npc->SpellFinished(976,$Target); #dispell
		quest::setnexthpevent(40);
		}
	}
	elsif($hpevent <= 40 && $hpevent >= 39) {
		my $Target = $npc->GetTarget();
		if ($Target) {
			quest::shout("Meet your Watery death!");
			$npc->SpellFinished(976,$Target); #dispell
			quest::setnexthpevent(20);
			}
		}
		elsif ($hpevent <= 20 && $hpevent >= 19) {
			quest::shout("Come my Minions!  Deal with these interloper's");
			quest::spawn2(999261,0,0,$x,$y,$z,$h); #spawns a sea horse add
			quest::setnexthpevent(10);
			}
			elsif ($hpevent <= 10 && $hpevent => 9) {  #checks to see if adds are up - IF they are - will start casting a 500 dmg AE every 10seconds and will full heal (basically players have to kill add)
				my $check_adds = $entity_list->GetMobByNpcTypeID(999261);
				if ($check_adds) {
					$check = 1;
					}
					if ($check == 1) {
						quest::shout("Fools!  You will not Destroy me!");
						$npc->SetHP($npc->GetMaxHP());
						quest::settimer("Fail",10);
						}
						if ($check == 0) {
							quest::shout("I WILL NOT DIE!");
							}
						}
	}
}
sub EVENT_TIMER {
if ($npc && $timer && $entity_list) {
	if ($timer eq "Fail") {
		my $Target = $npc->GetTarget();
		if ($Target) {
			$Target->Message(14,"You Feel Your Flesh Tear Away!");
			$npc->SpellFinished(731);
			}
		}
	}
}

sub EVENT_DEATH_COMPLETE {
quest::shout2("I will Have my Revenge!");
quest::depopall(999261);
quest::stoptimer("Fail");
}
				
				
		