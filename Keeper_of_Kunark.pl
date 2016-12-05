
sub EVENT_SAY{

my $field = quest::saylink ("Field of Bone",1);
my $overthere = quest::saylink ("The Overthere", 1);
my $firiona = quest::saylink ("Firiona Vie", 1);
my $emerald = quest::saylink ("Emerald Jungle", 1);
my $skyfire = quest::saylink ("Skyfire", 1);
my $dreadlands = quest::saylink ("The Dreadlands", 1);
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

 if ($text =~/hail/i && $status < 1)
 {
plugin::Whisper ("SSSSKKKTthhhhhhhh..... I hear you want to [enter kunark]?");
 } 
 
if($text=~/enter kunark/i && $status < 1)
        {
                if(!quest::istaskactive(17)&& !quest::istaskcompleted(17))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Kings of the old world, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(17);
                }
        }

if ($text =~/Hail/i && $status > 0)
{
plugin::Whisper ("Well hello there $name. Would you like to go to [$field], [$firiona], [$overthere], [$emerald], [$skyfire],[$dreadlands], [$guildlobby] or [$abysmal]?  ");
}
if ($text =~/fob/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(78,1617,-1684,-54.78);
}

if ($text =~/field/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(78, 1617, -1684, -54.78);
}

if ($text =~/firiona/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(84,1439.96,-2392.06,-2.65);
}
if ($text =~/overthere/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc( 93, -4263, -241, 235);
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

if ($text =~/emerald/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(94, 4648.06, -1222.97, 0);
}


if ($text =~/skyfire/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(91, -3931.32, -1139.25, 39.76);
}
if ($text =~/dreadlands/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(86, 9565.05, 2806.04, 1045.2);
}
if ($text =~/abysmal/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(279, -199, 0, 114);
}
}





