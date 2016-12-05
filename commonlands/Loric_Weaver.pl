sub EVENT_SAY {
  if(($ulevel >= 35) && ($ulevel <= 50)) {
    if($text=~/hail/i) {
      plugin::Whisper("Oh, hello $name. Would you like to assist me in a [task]?");
    }
    if($text=~/task/i) {
      plugin::Whisper("Excellent! I was hoping you would be able to help me.");
      quest::taskselector(141); #Task: Clearing the Mines
    }
  }
  else {
    plugin::Whisper("Sorry, $name. I am quite busy...");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}