sub EVENT_SPAWN {
quest::settimer("tox5min",300); #Live like is 900
}

sub EVENT_TIMER {
if ($timer eq "tox5min") {
quest::stoptimer("tox5min");
plugin::Whisper("The portal to Luclin will become active in five minutes. Please begin gathering at the Spires if you wish to travel.");
quest::settimer("tox3min",120);
}
if ($timer eq "tox3min") {
quest::stoptimer("tox3min");
plugin::Whisper("As a reminder, the portal will become active in three minutes.");
quest::settimer("tox2min",60);
}
if ($timer eq "tox2min") {
quest::stoptimer("tox2min");
plugin::Whisper("Two minutes till teleportation. Please be prepared to step inside the circle of Spires.");
quest::settimer("tox1min",60);
}
if ($timer eq "tox1min") {
quest::stoptimer("tox1min");
plugin::Whisper("One minute till teleportation. Please be prepared to step inside the circle of Spires.");
quest::settimer("toxtimer",60);
}
if ($timer eq "toxtimer") {
quest::stoptimer("toxtimer");
plugin::Whisper("The portal to Luclin is about to become active. Please stand inside the circle of Spires and have a shard upon your person.");
quest::setglobal("nexus_tox",1,3,"S60"); #when the portal is open, global is set true for 1 min.
quest::settimer("tox5min",900);
quest::signalwith(38051,101,0); #triggers the flavor
}
 }