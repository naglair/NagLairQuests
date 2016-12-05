sub EVENT_SAY
{

		if($text=~/hail/i && $qglobals{blackburrow} == 0)
		{
			plugin::Whisper("You found me! I've been trapped by these gnolls and can't get out");
			$client->Message(4,"as he turns away, you hear her mumble something about a courier");
		}
		
		if($text=~/hail/i && $qglobals{blackburrow} == 1)
		{
		plugin::Whisper("Ahh, great, that courier that is spreading lies is finally dead, now just finish the job");
		quest::assigntask(2004);
		}
		}

		
		
		