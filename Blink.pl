
sub EVENT_SAY {

my $cure = quest::saylink ("cure", 1);
my $buff = quest::saylink ("blessings", 1);
my $bind = quest::saylink ("bind", 1);
my $advanced = quest::saylink ("enhanced",1);
my $heals = quest::saylink ("heal",1);


if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. I have been sent to aid you on your journey! Would you like a [$cure], [$heals], [$buff], [$advanced] blessings, or I can [$bind] you to this location."); }



if ($text=~/cure/i) 
{ 
quest::selfcast(3297);
}
 if($text =~/heal/i)
{
quest::selfcast(13);
quest::selfcast(13);
quest::selfcast(13); 
}
if ($text=~/blessings/i) 
{
quest::selfcast(276);
quest::selfcast(278);
quest::selfcast(219);
quest::selfcast(368);
quest::selfcast(146);
quest::selfcast(148);
quest::selfcast(279);
quest::selfcast(129);
}
if ($text=~/bind/i)
 { 
 quest::selfcast(35); 
 }

if ($text =~/enhanced/i)
{  plugin::Whisper ("I charge 100 platinum for advanced buffs.");
}



}

sub EVENT_ITEM
  {

if($platinum == 100)
{
 plugin::Whisper ("Good, stand where you are while I cast");
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