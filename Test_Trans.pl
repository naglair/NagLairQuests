sub EVENT_SAY
{
my $qeynos = quest::saylink ("Qeynos",1);
my $efp = quest::saylink ("East Freeport", 1);
my $wfp = quest::saylink ("West Freeport", 1);
my $wl = quest::saylink ("Wakening Land", 1);
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
my $abysmal = quest::saylink ("Abysmal Sea (tradeskills)", 1);
my $lobby = quest::saylink ("Guild lobby", 1);
my $enterv = quest::saylink ("Enter Velious", 1);

 if ($text =~/hail/i && $status < 1)
 {
plugin::Whisper ("You must unlock the Kunark expansion before you begin this expansion.");
 } 
 
  if ($text =~/hail/i && $status > 0 && $status < 2)
 {
plugin::Whisper ("I hear you want to [$enterv]?");
 } 
 
if($text=~/enter velious/i && $status > 0 && $status < 2)
        {
                if(!quest::istaskactive(222)&& !quest::istaskcompleted(222))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Kings of Kunark, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(222);
               }
        }


if ($text =~/Hail/i && $status > 1)
{
plugin::Whisper ("Well hello there $name. Would you like to go to [$qeynos], [$efp], [$wfp], [$halas], [$erudin], [$surefall], [$rivervale], [$akanon], [$felwithe], [$kaladim].[$kelethin},[$oggok],[$neriak],[$guildlobby] or [$abysmal]?  ");
}

if ($text =~/neriak/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(40,5.42,94.14,26.70);
}
if ($text =~/oggok/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(47,1100,1100,25);
}
if ($text =~/kelethin/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(54,8,-47,0);
}

if ($text =~/kaladim/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(68,100,2700,0);
}

if ($text =~/akanon/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(56,800,-1600,-99);
}


if ($text =~/surefall/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(4, 0, 4700, 0);
}

if ($text =~/erudin/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(38, 341, 2353, -32);
}
if ($text =~/halas/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(30,682.74,3139.01,-60.16);
}		
		
		if ($text =~/qeynos/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(2,-74,428,3.8);
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
if ($text =~/rivervale/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(33, -2300, 500, 0);
}


if ($text =~/Wakening Land/i && $status > 1)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(119, -4869,-683,-193); } 

if ($text =~/felwithe/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(54,-2100,-2300,20);
}

if ($text =~/Great Divide/i && $status > 1)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(118, -965,-7720,-557); } 

if ($text =~/iceclad Ocean/i && $status > 1)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(110, 340,5333,-15); } 
if ($text =~/Western Wastes/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(120, -3500,-4000,-10); } 



if ($text =~/lobby/i && $status > 1)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(344, 0, 0, 0);
}

if ($text =~/guildlobby/i && $status > 1)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(344,0,0,0);
}


if ($text =~/abysmal/i && $status > 1)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(279, -199, 0, 114);
}
}





