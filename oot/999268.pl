#Focus of Air EVENT
#NPCID: 999268
#Located: Ocean of Tears - SW Island
#dispells Every 


sub EVENT_SPAWN {
quest::modifynpcstat("special_attacks","SERMCNIDfd");
}

sub EVENT_COMBAT {
if ($combat_state ==1) {
	quest::shout("How dare you?!");
	quest::setnexthpevent(80);
    }
	elsif ($combat_state == 0) {
		quest::shout("That will teach you!");
		}
}


sub EVENT_HP {
if ($npc) {
if ($hpevent <= 80 && $hpevent >= 79) {
	quest::shout("The Crystal Will never be yours!");
	my $Target = $npc->GetTarget();
	if ($Target) {
		$npc->SpellFinished(976,$Target);
		}
	quest::setnexthpevent(60);
	}
	elsif ($hpevent <= 60 && $hpevent >= 59) {
		my $Target = $npc->GetTarget();
		if ($Target) {
		quest::shout("I will strip you of your magic!");
		$npc->SpellFinished(976,$Target);
		}
		quest::setnexthpevent(40);
		}
		elsif ($hpevent <= 40 && $hpevent >= 39) {
			quest::shout("I will not be defeated!");
			my $Target = $npc->GetTarget();
			if ($Target) {
			$npc->SpellFinished(976,$Target);
			}
			quest::setnexthpevent(20);
			}
		elsif ($hpevent <= 20 && $hpevent >= 19) {
			quest::shout("Pitiful!");
			my $Target = $npc->GetTarget();
			if ($Target) {
			$npc->SpellFinished(976,$Target);
			}
			quest::setnexthpevent(10);
			}
		elsif ($hpevent <= 10 && $hpevent >= 9) {
			quest::shout("HAH!  I will not fall that easily!");
			$npc->SetHP($npc->GetMaxHP());
			}
			
	
	}
}



