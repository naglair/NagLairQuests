## NPC: Netherworld_Translocator
## Zone: chambersf - /quests/global/999215.pl
## Role: Porting NPC (template)

sub EVENT_SAY {

my $akanon = quest::saylink ("Ak'Anon", 1);
my $erudin = quest::saylink ("Erudin", 1);
my $felwithe = quest::saylink ("Felwithe", 1);
my $wfreeport = quest::saylink ("West Freeport", 1);
my $efreeport = quest::saylink ("East Freeport", 1);
my $grobb = quest::saylink ("Grobb", 1);
my $halas = quest::saylink ("Halas", 1);
my $qeynos = quest::saylink ("Qeynos",1);
my $kaladim = quest::saylink ("Kaladim", 1);
my $kelethin = quest::saylink ("Kelethin", 1);
my $neriak = quest::saylink ("Neriak Foreign Quarter", 1);
my $oggok = quest::saylink ("Oggok", 1);
my $paineel = quest::saylink ("Paineel", 1);
my $rivervale = quest::saylink ("Rivervale", 1);
my $surefall = quest::saylink ("Surefall Glade", 1);
my $lavastorm = quest::saylink ("Lavastorm Mountains", 1);
my $pok = quest::saylink ("Plane of Knowledge", 1);

if ($text =~/Hail/i) {
plugin::Whisper ("Hello $name, where can I take you today?");
plugin::Whisper ("[$akanon]");
plugin::Whisper ("[$erudin]");
plugin::Whisper ("[$felwithe]");
plugin::Whisper ("[$wfreeport]");
plugin::Whisper ("[$efreeport]");
plugin::Whisper ("[$grobb]");
plugin::Whisper ("[$halas]");
plugin::Whisper ("[$kaladim]");
plugin::Whisper ("[$kelethin]");
#Neriak zone is currently broken on the server, dont let people go there.
#plugin::Whisper ("[$neriak]");
plugin::Whisper ("[$oggok]");
plugin::Whisper ("[$paineel]");
plugin::Whisper ("[$qeynos]");
plugin::Whisper ("[$rivervale]");
plugin::Whisper ("[$surefall]");
plugin::Whisper ("[$lavastorm]");
plugin::Whisper ("[$pok]");
}

if ($text =~/ak'anon/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(55,-33.65,47.03,4.69);
}

if ($text =~/erudin/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(24,-254.49,-1422.08,-43.28);
}

if ($text =~/felwithe/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(61,51.37,-5.26,4.69);
}

if ($text =~/west freeport/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(9,178.68,36.26,-23.31);
}

if ($text =~/east freeport/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(10,-648.00,-1097.00,-52.22);
}

if ($text =~/grobb/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(52,0,-100,4.69);
}

if ($text =~/halas/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(29,11.54,-73.93,5.69);
}

if ($text =~/kaladim/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(60,-2,-18,4.69);
}

if ($text =~/kelethin/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(54,232.02,1172.38,21.80);
}

if ($text =~/Neriak Foreign Quarter/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(40,157,-3.00,32.69);
}

if ($text =~/qeynos/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(2,110,422.56,469);
}

if ($text =~/oggok/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(49,-99,-345,4.69);
}

if ($text =~/paineel/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(75,200,800,4.32);
}

if ($text =~/rivervale/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(19,0,0,4.69);
}

if ($text =~/surefall/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(3,0,0,3.69);
}

if ($text =~/lavastorm/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(27, 478.26, 463.07, -82.42);
}

if ($text =~/Plane of Knowledge/i)
{
plugin::Whisper ("$name, stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(202, -285.0, -148.0, -157.25);
}
}
