sub EVENT_SAY {
my $bring = quest::saylink ("bring",1);
my $ezell = quest::saylink ("ezell",1);
my $tokens = quest::saylink ("tokens",1);

if ($text =~/Hail/i)
{ 
plugin::Whisper("Greetings, $name. I can take that quest [$ezell] weapon and upgrade it for you, but youll need to [$bring] me back the magic [$tokens]."); 
}



if ($text=~/bring/i) 
{
plugin::Whisper("Those jerk Drolvargs from Karnor's took my [$tokens]! I need those to play Videogames at the arcade. Tell you what, find my lost Videogame [$tokens] and I'll upgrade your [$ezell] weapon!");
}
if ($text=~/ezell/i)
 {
plugin::Whisper("You dont have an Ezell weapon? Go see Westy over there and help him out, maybe he can help you..");
}

if ($text=~/tokens/i)
 {
plugin::Whisper("I need those to play games! Just Bring me one with your Ezell's weapon and hand them both into me at the same time. I'll give you something better.");
}
}

sub EVENT_ITEM {

#Kadas -> Ezell basher
if(plugin::check_handin(\%itemcount,1446 => 1, 1374 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapon!");
quest::summonitem("1447");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#Kadas -> Ezell thumper
(plugin::check_handin(\%itemcount,1446 => 1, 1375 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1448");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#Kadas -> Ezell slasher
(plugin::check_handin(\%itemcount,1446 => 1, 1377 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1449");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#Kadas -> Ezell poker
(plugin::check_handin(\%itemcount,1446 => 1, 1378 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1450");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#Kadas -> Ezell fist
(plugin::check_handin(\%itemcount,1446 => 1, 1379 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1458");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#Kadas -> Ezell slicer
(plugin::check_handin(\%itemcount,1446 => 1, 1380 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1502");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#Kadas -> Ezell skewer
(plugin::check_handin(\%itemcount,1446 => 1, 1381 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1503");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#Kadas -> Ezell smartypants
(plugin::check_handin(\%itemcount,1446 => 1, 1382 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1533");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
else {
plugin::return_items(\%itemcount);
plugin::Whisper("I think you misread my instructions. you did want a reward , right? THEN FOLLOW MY DIRECTIONS!");
}
}