sub EVENT_COMBAT {
	if($combat_state == 1){
	my $cur_target = $npc->GetHateTop();
		if($cur_target) {
		my $target_name = $cur_target->GetCleanName();
		plugin::Whisper("Time to die $target_name!");
		}
	}
}

sub EVENT_AGGRO {
	plugin::Whisper("$race have no place in our realm!");
}

sub EVENT_DEATH_COMPLETE_COMPLETE {
	plugin::Whisper("My comrades will avenge my death.");
}
