sub EVENT_SPAWN {
   if ($zonetime > 700 && $zonetime < 1899) {
   $npc->Depop(1);
   }
}

sub EVENT_WAYPOINT_ARRIVE {
   if (($zonetime > 700 && $zonetime < 1899) && ($wp == 1)) {
   $npc->Depop(1);
   }
}


sub EVENT_DEATH_COMPLETE
{
	my $random_result = int(rand(100));
	my $a=4199; 
	if($random_result<6)
	{
		plugin::Whisper("Spawning Fabled");
		quest::shout2 ("$name has spawned the Fabled ".$npc->GetCleanName()."");
		quest::spawn2($a, 0, 0, $x,$y,$z,$h);
	}
	else
	{
		plugin::Whisper("No spawn");
	}
}





