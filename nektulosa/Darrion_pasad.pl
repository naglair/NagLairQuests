sub EVENT_SAY {
my $place = quest::saylink ("place",1);
my $exterminate = quest::saylink ("exterminate",1);
my $Eldric = quest::saylink ("Eldric",1);
my $Alric = quest::saylink ("Alric",1);

if ($text =~/Hail/i)
{ 
plugin::Whisper("Greetings, $name. If you are here to test your luck for your epic 1.5 weapon you have come to the right [$place]."); 
}



if ($text=~/place/i) 
{
plugin::say("This place is a prison for some of the fiercest Orcs who ever raided. If you help us [$exterminate] them I will provide you with your epic 1.5 token. ");
}
if ($text=~/exterminate/i)
 {
plugin::say("Go talk to one of my sons, [$Eldric] or [$Alric] to begin the test.");
}

if ($text=~/Eldric/i)
 {
plugin::say("Oh, he's one of my sons. The one on the left? or the right. I can't tell them apart");
}
if ($text=~/Alric/i)
 {
plugin::say("Oh, he's one of my sons. The one on the right? or the left. I can't tell them apart");
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