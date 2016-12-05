sub EVENT_SPAWN
{
quest::moveto(4917,-2548,222.8);
$npc->SaveGuardSpot()
quest::settimer("waiter",4);
}
sub EVENT_TIMER
{
if($timer eq "waiter")
{
quest::stop();
}
}
sub EVENT_ENTER
{
plugin::Whisper("Debug");
}
