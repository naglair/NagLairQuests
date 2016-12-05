###################################
#Zone: Ak`Anon                    #
#Short Name: akanon               #
#Zone ID: 55                      #
###################################
#NPC Name: Juline_Urncaller       #
#NPC ID: 55132                    #
#Quest Status: Complete           #
###################################

sub EVENT_SAY { 
  if ($text=~/hail/i) {
    plugin::Whisper("Hail.");
  }
}

sub EVENT_ITEM { 
  if(plugin::check_handin(\%itemcount, 18773 => 1)) {
    plugin::Whisper("Thanks.");
    quest::summonitem(13522);
    quest::exp(100);
  }
  else {
    plugin::Whisper("I do not need this.");
    plugin::return_items(\%itemcount);
  }
}