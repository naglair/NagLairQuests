sub EVENT_ITEM { 
     if (plugin::check_handin(\%itemcount, 13894 => 1)){
          plugin::Whisper("Good work, you should be running this operation instead of that Talrigar fellow. Have a small reward. A little bit of the gems I found while tunneling through this rock.");
          quest::summonitem(quest::ChooseRandom(10015,10016,10017,10018)); 
               }
     else {
          plugin::return_items(\%itemcount);
          plugin::Whisper("I have no use for this.");
          }
     }
