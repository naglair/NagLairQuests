sub EVENT_SAY{
my $Kunark = quest::saylink ("Kunark", 1);
my $fight = quest::saylink ("fight",1);
my $fight1 = quest::saylink ("Lord Nagafen",1);
my $fight2 = quest::saylink ("Lady Vox",1);
my $fight3 = quest::saylink ("Cazic Thule",1);
my $fight4= quest::saylink ("Innoruuk",1);
my $fight5 = quest::saylink ("Venril Sathir",1);
my $fight6 = quest::saylink ("Gorenaire",1);
my $fight7 = quest::saylink ("Talendor",1);
my $fight8 = quest::saylink ("Severilous",1);
my $fight9 = quest::saylink ("Trakanon",1);
my $fight10 = quest::saylink ("Drusella Sathir",1);
my $plat = quest::saylink ("15000",1);


if($text=~/hail/i && $qglobals{"NameCheck"} <= 1)
{
quest::setglobal("NameCheck", 1, 5, "F");
plugin::Whisper("Ahh the new recruit, they told me a $class would be coming to try out in the arena, What is your name, recruit?");
quest::setglobal("NameCheck", 2, 5, "F");
}
if ($text=~/delglobal/i)
{
quest::delglobal("NameCheck")
}

if (($text=~//i) && $qglobals{"NameCheck"} == 2)
{
plugin::Whisper("Ahh, $name, thats a strange name. I will be your trainer. I will teach you how to [$fight] in the arena!");
quest::setglobal("NameCheck", 3, 5, "F");
}

if (($text=~/fight/i or $text=~/hail/i) && $qglobals{"NameCheck"} >= 3)
{

plugin::Whisper("I can bring the following beasts out for you to fight: $fight1. Please do be cautious, these monsters are much stronger than in the wild. They have been trained to fight. Alternatively, we can skip your tests for [$plat] platinum");
}
}
