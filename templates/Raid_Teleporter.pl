sub EVENT_SAY{

my $Plane_of_Hate = quest::saylink ("Plane of Hate",1);
my $Plane_of_Fear = quest::saylink ("Plane of Fear", 1);
my $Plane_of_Sky = quest::saylink ("Plane of Sky", 1);
my $Alter_Planes = quest::saylink ("Alter Planes", 1);

if ($text =~/Hail/i) 

{
plugin::Whisper (" I can assist you in traveling to the [$Alter_Planes].");
}

if ($text =~/Alter Planes/i)

{
plugin::Whisper (" [$Plane_of_Fear],[$Plane_of_Hate], or [$Plane_of_Sky].");
}

if ($text eq "Plane of Sky")

{
$client->Message(13,"You feel a rush of air through your hair.");
quest::zone(airplane);
}

if ($text eq "Plane of Hate")
{
$client->Message(13,"You feel your heart shift into hatred.");
quest::zone (hateplane);
}

if ($text eq "Plane of Fear")
{
$client->Message(13,"A feeling of uncontrollable fear enters your mind.");
quest::zone (fearplane);
}

}