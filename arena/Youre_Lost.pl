sub EVENT_SAY {

if ($text =~/hail/i)
{
quest::shout("You are here because you tried to enter a zone that you do not have access to! Unlock the expansions and then you may travel to its zones! NOW FLEE FROM ME!");
}

}











