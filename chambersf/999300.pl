
sub EVENT_SAY
{

if($text=~/hail/i && ($zonesn ~~ @luclinzones) && ($qglobals{flagging} < 3)))
{
quest::shout("TEST");
}
}