sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Heyo! Looking for an exciting [task] to fill the time? I know I would be if not for all this stuff I've got to get through. Oh well, I'm sure I'll be able to live vicariously through others as they complete those tasks for me.");
  }
  if ($text=~/task/i) {
     quest::taskselector(137);

  }
  if(quest::istaskactive(137) && $text=~/task/i) {
plugin::Whisper("Spiders in the Commonlands is in progress.");
} 
    
}