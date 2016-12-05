sub EVENT_SPAWN
{
plugin::Whisper("That'll buy me some time.");
quest::emote("Twitches, and speaks with shallow breaths.");
}

sub EVENT_SAY
{
my $help = quest::saylink("help");

if($text=~/remove/i)
{
quest::delglobal("runny");
plugin::Whisper("Removed");
}

if($text=~/hail/i)
{
plugin::Whisper("I can never repay you enough for what you did, if you wish to [$help] further, you will recieve this trinket.");
}

if($text=~/help/i)
{
plugin::Whisper("Do this last thing for me please!");
quest::assigntask(2008);
quest::setglobal("runny",2,5,"f");
quest::depop(999254);
}
}
