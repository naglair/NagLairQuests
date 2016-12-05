sub EVENT_SAY {
	if(quest::istaskactive(211)){
		if($text=~/Hail/i) {
			if(quest::istaskactivityactive(211,1)){
				plugin::Whisper("Oh you found her! How can I ever repay you.");
				quest::summonitem(87311,5);
				$client->AddLevelBasedExp(10, 0);
				quest::setglobal("halloween_black_cat",1,0,"H3");
			}
      			else {
      				plugin::Whisper("Did you find Muffin? I don't see her anywhere. Please return her to me safely!");
      			}
      		}
      	}
	if(!quest::istaskactive(211)){
		if(!defined $qglobals{halloween_black_cat}){
			if($text=~/Hail/i) {
   				plugin::Whisper("Please help me find my missing cat, she has gone astray and I can't seem to find her anywhere. Her name is Muffin. Will you [help] me? Oh please!");
      			}
      			if($text=~/help/i) {
      				plugin::Whisper("Please bring her back safely!");
                                quest::assigntask(219);
      				quest::assigntask(211);
      			}	
		}
		else {
			plugin::Whisper("Thank you for finding her!");
		}		
	}	
}