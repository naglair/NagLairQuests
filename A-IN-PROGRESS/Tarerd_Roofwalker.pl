sub EVENT_SAY {
my $package = quest::saylink ("package",1);



if ($text =~/Hail/i)
{ 
plugin::Whisper("Hey, $name. It's nice to see you. Can you deliver a [$package] to my brother, Jarerd?"); 
}


if(($text=~/package/i))
{
plugin::Whisper("Great! Here you go! Im sure he'll be glad to get it!");
quest::summonitem("1353");
}

}

sub EVENT_ITEM {
turn in Tarerd's Package
if(plugin::check_handin(\%itemcount,1352 => 1)) {
plugin::Whisper("Great! I don't know how you did it, but thank you so much!");
quest::givecash("0","0","0","3");
quest::exp(1000);
}
else {
plugin::return_items(\%itemcount);
plugin::Whisper("I don't need this!");
}
}