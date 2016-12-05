sub EVENT_DEATH_COMPLETE
{
quest::signal(206033,1);
quest::spawn2(202368,0,0,$x,$y,$z,$h);
}