sub EVENT_COMBAT {
	my $NPCRace = $npc->GetRace();
	if($combat_state == 1){
		if($NPCRace==54){
			plugin::Whisper("Orc stomp, orc kill - orc weapons, your blood will spill.");
		}
		else {
			plugin::Whisper("Time to die $name!");
		}
	}
}

sub EVENT_DEATH_COMPLETE_COMPLETE {
		if($NPCRace!=54){
			plugin::Whisper("My comrades will avenge my death.");
		}
}