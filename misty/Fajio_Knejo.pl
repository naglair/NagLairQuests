#Zone: Misty Thicket
#Short Name: misty
#Zone ID: 33
#
#NPC Name: Fajio Knejo
#NPC ID: 33092
#Quest Status: Finished
#

sub EVENT_SAY { 
  if($text=~/Hail/i) {
    plugin::Whisper("Greetings, $name.  I hope you are having a fine day.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 20532 => 1)) {
    plugin::Whisper("Run onward, my friend, to the far off Desert of Ro and give this torch to Andad Filla.");
    quest::summonitem(20533);
  }
  else {
    plugin::Whisper("I have no need of this, $name.");
    plugin::return_items(\%itemcount);
  }
}

#END of FILE Zone:misty  ID:33092 -- Fajio_Knejo

