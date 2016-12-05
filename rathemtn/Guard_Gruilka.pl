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
	my $random = int(rand(3));
	if($random == 0) {
		plugin::Whisper("it's $class like you that insult all of Norrath!");
	}
	if($random == 1) {
		plugin::Whisper("$class like you are an affront to my senses!");
	}
	if($random == 1) {
		plugin::Whisper("I really hate $class like you!");
	}	
}

sub EVENT_DEATH_COMPLETE_COMPLETE {
	plugin::Whisper("My comrades will avenge my death.");
}
