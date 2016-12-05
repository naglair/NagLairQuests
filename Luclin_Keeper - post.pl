sub EVENT_SAY
{
my $gd = quest::saylink ("Great Divide",1);
my $ico = quest::saylink ("iceclad Ocean", 1);
my $ww = quest::saylink ("Western Wastes", 1);
my $wl = quest::saylink ("Wakening Land", 1);

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
my $enterv = quest::saylink ("Enter Luclin", 1);

 #if ($text =~/hail/i)
 #{
#plugin::Whisper ("This quest is working.");
# } 

 if ($text =~/hail/i && $status < 1)
 {
plugin::Whisper ("You must unlock the Kunark expansion before you begin this expansion.");
 } 
 
  if ($text =~/hail/i && $status/say  < 2)
 {
plugin::Whisper ("You must unlock the Velious expansion before you begin this expansion.");
 } 
 
  if ($text =~/hail/i && $status > 0 && $status > 1)
 {
plugin::Whisper ("I hear you want to [$enterv]?");
 } 
 
if($text=~/enter luclin/i && $status > 1)
        {
                if(!quest::istaskactive(223)&& !quest::istaskcompleted(223))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Lords of Velious, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(223);
               }
        }

if ($text =~/Hail/i && $status > 2)
{
plugin::Whisper ("Well hello there $name. Would you like to go to [$gd], [$ico], [$ww], [$wl] [$guildlobby] or [$abysmal]?  ");
}
if ($text =~/Wakening Land/i && $status > 1)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(119, -4869,-683,-193); } 

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





