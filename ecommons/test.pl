sub EVENT_SAY
{
if($text=~/Hail/i)
{
quest::setglobal("check1",1,5,"F");
}
}