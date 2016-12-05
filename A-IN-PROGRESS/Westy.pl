sub EVENT_SAY {
my $bring = quest::saylink ("bring",1);
my $kadas = quest::saylink ("kadas",1);
my $please = quest::saylink ("please",1);

if ($text =~/Hail/i)
{ 
plugin::Whisper("Greetings, $name. I can take that quest [$kadas] weapon and upgrade it for you, but youll need to [$bring] me back the magic words."); 
}



if ($text=~/bring/i) 
{
plugin::Whisper("Those filthy frogs from lower guk somehow got their hands on Ezell's book of necromancy and ripped out the good pages. I need those pages to upgrade your weapon. I don't know which frogs have them, so kill them all! Don't forget to hand me the page AND your old weapon!");
}
if ($text=~/kadas/i)
 {
plugin::Whisper("You dont have a Kadas weapon? Go see Questy over there and help him out, he has a few spare laying around.");
}

if ($text=~/please/i)
 {
plugin::Whisper("That's an awfully nice try, but I cant help without the pages from the book. Go [$bring] me the pages back!");
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
elsif
#adak -> kadas thumper
(plugin::check_handin(\%itemcount,1434 => 1, 1392 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1375");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas slasher
(plugin::check_handin(\%itemcount,1434 => 1, 1393 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1377");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas poker
(plugin::check_handin(\%itemcount,1434 => 1, 1394 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1378");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas fist
(plugin::check_handin(\%itemcount,1434 => 1, 1395 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1379");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas slicer
(plugin::check_handin(\%itemcount,1434 => 1, 1396 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1380");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas skewer
(plugin::check_handin(\%itemcount,1434 => 1, 1399 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1381");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas skewer
(plugin::check_handin(\%itemcount,1434 => 1, 1432 => 1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1382");
quest::exp(62550);
quest::faction(500,350);   # + Crazy_Questgivers
quest::ding()
}
else {
plugin::return_items(\%itemcount);
plugin::Whisper("I think you misread my instructions. you did want a reward , right? THEN FOLLOW MY DIRECTIONS!");
}
}