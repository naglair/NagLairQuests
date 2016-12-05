
sub EVENT_SAY{
my $gd = quest::saylink ("Great Divide",1);
my $ico = quest::saylink ("iceclad Ocean", 1);
my $ww = quest::saylink ("Western Wastes", 1);
my $wl = quest::saylink ("Wakening Land", 1);
my $fob = quest::saylink ("Field of Bone",1);
my $ot = quest::saylink ("The Overthere", 1);
my $fv = quest::saylink ("Firiona Vie", 1);
my $ej = quest::saylink ("Emerald Jungle", 1);
my $sky = quest::saylink ("Skyfire", 1);
my $dl = quest::saylink ("The Dreadlands", 1);
my $rivervale = quest::saylink ("Rivervale", 1);
my $akanon = quest::saylink ("Akanon", 1);
my $felwithe = quest::saylink ("Felwithe", 1);
my $kaladim = quest::saylink ("Kaladim", 1);
my $kelethin = quest::saylink ("Kelethin", 1);
my $oggok = quest::saylink ("Oggok", 1);
my $grobb = quest::saylink ("Grobb", 1);
my $neriak = quest::saylink ("Neriak", 1);
my $nektulos = quest::saylink ("Nektulos Forest", 1);
my $lobby = quest::saylink ("Lobby", 1);
my $lavastorm = quest::saylink ("Lavastorm Mountains", 1);
my $qeynos = quest::saylink ("Qeynos",1);
my $east_freeport = quest::saylink ("East Freeport", 1);
my $west_freeport = quest::saylink ("West Freeport", 1);
my $halas = quest::saylink ("Halas", 1);
my $erudin = quest::saylink ("Erudin", 1);
my $surefall = quest::saylink ("Surefall Glade", 1);
my $abysmal = quest::saylink ("Abysmal Sea (tradeskills)", 1);


if ($text =~/Hail/i && $status < 1)
{
$client->Message(315,"Well hello there $name. Wou333ld you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], [$lobby] or  [$abysmal]  ");
}
if ($text =~/hail/i && $status > 0 && $status < 2)
 {
$client->Message(315,"Well hello there $name. Wou333ld you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], [$lobby], [$abysmal] ,[$fob], [$fv], [$ot], [$ej], [$sky] or[$dl]? ");
 } 
 if ($text =~/hail/i && $status > 1)  #&& $status < 3)
 {
 $client->Message(315,"Well hello there $name. Wou333ld you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], [$lobby], [$abysmal] ,[$fob], [$fv], [$ot], [$ej], [$sky],[$dl], [$gd], [$ico], [$ww], [$wl] ");

 }
if ($text =~/kaladim/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(68,100,2700,0);
}
if ($text =~/kelethin/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(54,8,-47,0);
}
if ($text =~/abysmal/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(279, -199, 0, 114);
}

if ($text =~/lobby/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(344, 0, 0, 0);
}

if ($text =~/guildlobby/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(344,0,0,0);
}

if ($text =~/akanon/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(56,800,-1600,-99);
}


if ($text =~/nektulos/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(25,-700,1800,22);
}
if ($text =~/grobb/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(46,-600,-2500,0);
}

if ($text =~/oggok/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(47,1100,1100,25);
}

if ($text =~/felwithe/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(54,-2100,-2300,20);
}
if ($text =~/east freeport/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(10,-364,-536,-52.22);
}
if ($text =~/west freeport/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(9,245,142,-24.25);
}
if ($text =~/qeynos/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(2,-74,428,3.8);
}

if ($text =~/neriak/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(40,5.42,94.14,26.70);
}

if ($text =~/halas/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(30,682.74,3139.01,-60.16);
}
if ($text =~/rivervale/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(33, -2300, 500, 0);
}
if ($text =~/surefall/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(4, 0, 4700, 0);
}
if ($text =~/lavastorm/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(27, -666.5, 358.6, -95.7);
}

if ($text =~/erudin/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(38, 341, 2353, -32);
}

if ($text =~/Wakening Land/i && $status > 1)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(119, -4869,-683,-193); } 

if ($text =~/Great Divide/i && $status > 1)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(118, -965,-7720,-557); } 

if ($text =~/iceclad Ocean/i && $status > 1)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(110, 340,5333,-15); } 
if ($text =~/Western Wastes/i)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(120, -3500,-4000,-10); } 

if ($text =~/fob/i && $status > 0)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(78,1617,-1684,-54.78);
}

if ($text =~/field/i && $status > 0)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(78, 1617, -1684, -54.78);
}

if ($text =~/firiona/i && $status > 0)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(84,1439.96,-2392.06,-2.65);
}
if ($text =~/overthere/i && $status > 0)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc( 93, -4263, -241, 235);
}
}





