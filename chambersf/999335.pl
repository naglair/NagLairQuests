sub EVENT_SAY
{
if($text=~/hail/i)
{
plugin::Whisper("Please hand me your Lich's earring if you are stuck at level 60.");
}
}

sub EVENT_ITEM
{
if(plugin::check_handin(\%itemcount, 132552 => 1))
{
quest::setglobal("CharMaxLevel", 65, 5, "F");
quest::setglobal("level65questcompleted", 1, 5, "F");
plugin::Whisper("You have been fixed.");
quest::summonitem(132552);
}
}

