###################################
#Zone: Ak`Anon                    #
#Short Name: akanon               #
#Zone ID: 55                      #
###################################
#NPC Name: Velena_Corgtec         #
#NPC ID: 55119                    #
###################################

sub EVENT_SAY { 
  if ($text=~/hail/i) {
    plugin::Whisper("Hail.");
  }
}

sub EVENT_ITEM { 
  if (plugin::check_handin(\%itemcount, 18704 => 1)) {
    plugin::Whisper("Thanks.");
    quest::summonitem(13524);
    quest::exp(100);
  }
  else {
    plugin::Whisper("I do not want this.");
    plugin::return_items(\%itemcount);
  }
}