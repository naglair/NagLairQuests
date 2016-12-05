sub EVENT_SAY {
  if(($ulevel >= 20) && ($ulevel <= 30)) {
    if($text=~/hail/i) {
      plugin::Whisper("Oh, hello $name. Would you like to assist me in a [task]?");
    }
    if($text=~/task/i) {
      plugin::Whisper("Excellent! I was hoping you would be able to help me.");
      quest::taskselector(143); #Task: Bringing Goods to the Karanas
    }
  }
  else {
    plugin::Whisper("Sorry, $name. I am quite busy...");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no use for this.");
  plugin::return_items(\%itemcount);
}
