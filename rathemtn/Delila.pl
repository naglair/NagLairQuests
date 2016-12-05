sub EVENT_SAY {
  if($text=~/hail/i) {
   plugin::Whisper("Hello, $name. Perhaps you are interested in helping me with a [task]?"); #Text made up
  }
  if($text=~/task/i) {
   quest::taskselector(150); #Of Bones and Beetles
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}