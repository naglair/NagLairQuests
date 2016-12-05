
sub EVENT_SAY
{
        if($text=~/hail/i)
        {
                if(!quest::istaskactive(17)&& !quest::istaskcompleted(17))
                {
                        plugin::Whisper("Assigning you the task to unlock Kunark!");
                        quest::assigntask(17);
                }
        }
}
