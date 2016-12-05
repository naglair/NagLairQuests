$tic;
sub EVENT_SPAWN
{
	$tic = 0;
}

sub EVENT_WAYPOINT_DEPART
{
	$tic++;
	if($tic == 14)
	{
		my $rand_say = int(rand(5)) + 1;
		if($rand_say == 1)
		{
			plugin::Whisper("So much carnage.");
		}
		elsif($rand_say == 2)
		{
			plugin::Whisper("Our soldiers can only take so much.");
		}
		elsif($rand_say == 3)
		{
			plugin::Whisper("Hang in there.");
		}
		elsif($rand_say == 4)
		{
			plugin::Whisper("These soldiers are exhausted, we must must get help soon.");
		}
		elsif($rand_say == 5)
		{
			plugin::Whisper("Hopefully these soldiers make it to see tomorrow.");
		}
		$tic = 0;
	}
}