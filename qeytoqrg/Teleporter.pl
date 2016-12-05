
sub EVENT_SAY{
if ($text =~/Hail/i)
{
plugin::Whisper ("Well hello there $name. Would you like to go to [Qeynos], [East Freeport], [West Freeport], [Halas], [Erudin],[Surefall], [Rivervale], [Akanon], [Felwithe],[Kaladim],[Kelethin],[Oggok], [Grobb], [Neriak] or the [Guildlobby]?  ");
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


if ($text =~/neriak/i)
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
quest::movepc(33, 438, -2400, -4.53);
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
}



