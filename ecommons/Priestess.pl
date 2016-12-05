#new Priestess script
sub EVENT_SAY{

my $cure = quest::saylink ("cure", 1);
my $buff = quest::saylink (" free buffs", 1);
my $bind = quest::saylink ("bind", 1);
my $advanced = quest::saylink ("advanced blessing");

if ($text =~/hail/i)
{
 plugin::Whisper("Greetings $name. I have been sent to aid you on your journey! Would you like a [$cure], [$buff], [$advanced] or I can [$bind] you to this location."); 
 }
if ($text=~/cure/i)
 { 
 quest::selfcast(3297); 
 }

if ($text=~/buff/i) 
{
quest::selfcast(276);
}
if ($text=~/buff/i) 
{
quest::selfcast(278);
}
if ($text=~/buff/i)
{
 quest::selfcast(219);
 }
if ($text=~/buff/i)
 {
 quest::selfcast(368);
 }
if ($text=~/buff/i)
{
quest::selfcast(146);
}
if ($text=~/buff/i)
{
quest::selfcast(148);
}
if ($text=~/buff/i)
{
quest::selfcast(279);
}
if ($text=~/buff/i)
{
quest::selfcast(129);
}
if ($text=~/bind/i)
 {
quest::selfcast(35); 
}

if ($text =~/advanced/i)
{  
plugin::Whisper("I charge 100pp for superior buffs.");
}
}



sub EVENT_ITEM
  {

if($platinum == 100)
{
 plugin::Whisper("Good, stand where you are while I cast");
 quest::selfcast(3692);
quest::selfcast(2505);
 quest::selfcast(423);
quest::selfcast(356);
quest::selfcast(172);
quest::selfcast(64);
quest::selfcast(145);
quest::selfcast(1693);
 quest::selfcast(15);
quest::selfcast(60);
quest::selfcast(61);
quest::selfcast(46);
quest::selfcast(2524);
}
  }
 





