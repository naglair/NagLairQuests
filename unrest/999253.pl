sub EVENT_SPAWN{
quest::creategroundobject(11165, -58.9, 696.9, 55.1, 191.6, 100000);
}



sub EVENT_SAY{
my $doll = quest::varlink("11165");
	if($text=~/hail/i)
	{
	plugin::Whisper("My sister didn't get her dolly, but I left mine in the master's tower, He scares me, can you please get my $doll?");
	}
	}
sub EVENT_ITEM
{
if(plugin::check_handin(\%itemcount,11165 => 1))
{
plugin::Whisper("Thank you so much, NOW KILL THE ONES WHO DID US WRONG!");
quest::assigntask(2006);
quest::creategroundobject(11165, -58.9, 696.9, 55.1, 191.6, 100000);
}
}