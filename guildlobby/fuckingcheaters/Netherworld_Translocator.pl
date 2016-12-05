
sub EVENT_SAY{

my $qeynos = quest::saylink ("Qeynos",1);
my $east_freeport = quest::saylink ("East Freeport", 1);
my $west_freeport = quest::saylink ("West Freeport", 1);
my $halas = quest::saylink ("Halas", 1);
my $erudin = quest::saylink ("Erudin", 1);
my $surefall = quest::saylink ("Surefall Glade", 1);
my $rivervale = quest::saylink ("Rivervale", 1);
my $akanon = quest::saylink ("Akanon", 1);
my $felwithe = quest::saylink ("Felwithe", 1);
my $kaladim = quest::saylink ("Kaladim", 1);
my $kelethin = quest::saylink ("Kelethin", 1);
my $oggok = quest::saylink ("Oggok", 1);
my $grobb = quest::saylink ("Grobb", 1);
my $neriak = quest::saylink ("Neriak", 1);
my $nektulos = quest::saylink ("Nektulos Forest", 1);
my $guildlobby = quest::saylink ("Guild Lobby", 1);
my $lavastorm = quest::saylink ("Lavastorm Mountains", 1);
my $lobby = quest::saylink ("Guild lobby", 1);

if ($text =~/Hail/i)
{
plugin::Whisper ("Well hello there $name. Would you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], or [$guildlobby]  ");
}
if ($text =~/kaladim/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(68,100,2700,0);
}
if ($text =~/kelethin/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(54,8,-47,0);
}
if ($text =~/abysmal/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(279, -199, 0, 114);
}

if ($text =~/lobby/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(344, 0, 0, 0);
}

if ($text =~/guildlobby/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(344,0,0,0);
}

if ($text =~/akanon/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(56,800,-1600,-99);
}


if ($text =~/nektulos/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(25,-700,1800,22);
}
if ($text =~/grobb/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(46,-600,-2500,0);
}

if ($text =~/oggok/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(47,1100,1100,25);
}

if ($text =~/felwithe/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(54,-2100,-2300,20);
}
if ($text =~/east freeport/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(10,-364,-536,-52.22);
}
if ($text =~/west freeport/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(9,245,142,-24.25);
}
if ($text =~/qeynos/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(2,-74,428,3.8);
}

if ($text =~/neriak/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(40,5.42,94.14,26.70);
}

if ($text =~/halas/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(30,682.74,3139.01,-60.16);
}
if ($text =~/rivervale/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(33, -2300, 500, 0);
}
if ($text =~/surefall/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(4, 0, 4700, 0);
}
if ($text =~/lavastorm/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(27, -666.5, 358.6, -95.7);
}

if ($text =~/erudin/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(38, 341, 2353, -32);
}
}





