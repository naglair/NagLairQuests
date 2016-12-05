sub EVENT_SAY
{
my $are = quest::saylink ("are", 1);
my $vs = quest::saylink ("Venril", 2);

if($text=~/hail/i)
{
plugin::Whisper("Hello my dear $race. You're probably wondering where you [$are]?");
}
	if($text=~/are/i)
	{
	plugin::Whisper("My men saved you from [$vs]!");
	}
		if($text=~/Venril/i)
		{
		plugin::Whisper("Venril is the leader of the Undead, his quest to become a Lich is never-ending, he will do what ever he can to stop anyone in his path");
		}
}