sub EVENT_SAY
{

 if ($text =~/hail/i)
 {
plugin::Whisper ("This quest is not working.");
 } 

 if ($text =~/hail/i && $status > 1)
    {
                if(!quest::istaskactive(178)&& !quest::istaskcompleted(178))
                {
                        plugin::Whisper("First, you must prove you are worthy. If you show yourself to be powerful enough to slay the Lords of Velious, I shall invite you to begin your journey into the new world!");
                        quest::assigntask(178);
               }
        }

 
}





