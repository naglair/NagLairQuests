sub EVENT_SAY {
  if($text=~/hail/i) {
    if(quest::istaskactivityactive(141,0)) {
      plugin::Whisper("Thanks for contacting me, $name. Your information on this matter has been most useful.");
      quest::updatetaskactivity(141,0);
    }
    else {
      plugin::Whisper("Hello, $name.");
    }
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no use for this, $name.");
  plugin::return_items(\%itemcount);
}