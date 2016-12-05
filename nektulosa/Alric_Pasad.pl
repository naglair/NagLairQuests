sub EVENT_SAY {
my $test = quest::saylink ("test",1);
my $exterminate = quest::saylink ("exterminate",1);
my $Eldric = quest::saylink ("Eldric",1);
my $Alric = quest::saylink ("Alric",1);

if ($text =~/Hail/i)
{ 
plugin::Whisper("Greetings, $name. Are you ready for the [$test]."); 
}



if ($text=~/test/i) 
{
plugin::say("Are you sur eyou want to [begin]? ");
}
if ($text=~/begin/i)
 {
plugin::say("Good luck! You enemy awaits behind me ");

quest::spawn2(124155,0,0,-739,517,121,255);

}

}



sub EVENT_ITEM {

#adak -> kadas basher
if(plugin::check_handin(\%itemcount,1434 => 1, 1391 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapon!");
quest::summonitem("1374");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
else {
plugin::return_items(\%itemcount);
plugin::Whisper("II dont want this !");
}
}