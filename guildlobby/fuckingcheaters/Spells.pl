sub EVENT_SAY { 

my $newb = quest::saylink ("spells up to level 10", 1);
my $advanced = quest::saylink ("advanced spells for a fee", 1);

if($text=~/hail/i){
plugin::Whisper("Greetings $name, I can scribe all of your $newb for free! I charge 10pp for level 15 spells, 50pp for level 20 spells, 100pp for level 25 spells, 150pp for level 30 spells, 250pp for level 35 spells, 400pp for level 40 spells, 600pp for level 45 spells, or 1000pp for all spells to level 50!") ;}

if ($text=~/up/i) { plugin::Whisper("Scribing your spells $name!");
quest::scribespells(10); }
}
if ($text=~//fee/i) { plugin::Whisper("I charge 10pp for level 15 spells, 50pp for level 20 spells, 100pp for level 25 spells, 150pp for level 30 spells, 250pp for level 35 spells, 400pp for level 40 spells, 600pp for level 45 spells, or 1000pp for all spells to level 50!"");
if ($text =~/advanced/i){ plugin::Whisper ("$name , I charge 10pp for level 15 spells, 50pp for level 20 spells, 100pp for level 25 spells, 150pp for level 30 spells, 250pp for level 35 spells, 400pp for level 40 spells, 600pp for level 45 spells, or 1000pp for all spells to level 50!");  }
}

sub EVENT_ITEM
  {

if($platinum == 10)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::scribespells(15);
}
if($platinum == 50)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::scribespells(20);
} 
if($platinum == 100)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::scribespells(25);
}

if($platinum == 150)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::scribespells(30);
}

if($platinum == 250)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::scribespells(35);
}

if($platinum == 400)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::scribespells(40);
}


if($platinum == 600)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::scribespells(45);
}

if($platinum == 1000)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::scribespells(50);
}
}


