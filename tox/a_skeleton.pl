sub EVENT_ITEM { 
     if (plugin::check_handin(\%itemcount, 13894 => 1)){
          plugin::Whisper("Aye.. You cut out the middleman..  I shall reward you.. hmm..  I have not found anything. how about..  <CRACK!! SNAP!! RIPP!!>  How about something off meself?");
          quest::summonitem(quest::ChooseRandom(9304,12195,13073,13074)); 
               }
     else {
          plugin::return_items(\%itemcount);
          plugin::Whisper("I have no use for this.");
          }
     }
#END of FILE Zone:tox  ID:78028 -- a_skeleton 

