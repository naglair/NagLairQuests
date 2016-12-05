
sub EVENT_DEATH_COMPLETE
{
	my $random_result = int(rand(100));

	if($random_result<75)
	{
		quest::spawn2(quest::chooserandom(126153,126163,1216197,126246,126249,126265,126291), 0, 0, $x,$y,$z,$h);
	}
	else
	{
		plugin::Whisper("No spawn");
	}
}





