#Renaldok_Masric.pl
#Coterie Mask of the Dead

sub EVENT_SAY { 
	if($text=~/Hail/i){
		plugin::Whisper("Greetings mortal. The aura of death that surrounds you is the only reason you are not already a feast for my minions. Have you come to me as a sacrifice or are you offering your [services] to the Coterie of the Eternal Night?");
	}

	if($text=~/services/i){
		plugin::Whisper("If you are powerful enough to be of use to me you will journey to the Twilight regions on the south side of Luclin and fill this wineskin with the blood of Akheva. Failure is final death, either at the hands of the Akheva or the hands of the Coterie.");
		quest::summonitem(17096);#Empty Blood Skin
	}
}

sub EVENT_ITEM {
	if(plugin::check_handin(\%itemcount, 10799 => 1)){#Skin of Akheva Blood
		plugin::Whisper("Well done, for a mortal you have served us well");
		quest::summonitem(7778);#Coterie Mask of the Dead
		quest::faction(55, 5); #Coterie of Eternal Night
		quest::faction(349, 5); #Valdanov Zevfeer
		quest::faction(228, -10); #Nathyn Illuminious
		quest::faction(350, 2); #Validus Custodus
	}
  else {
    plugin::Whisper("I don't need this."); #text made up
    plugin::return_items(\%itemcount);
    return 1;
  }	
}#Done