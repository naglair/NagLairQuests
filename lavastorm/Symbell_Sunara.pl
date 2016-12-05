sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Hello, $name.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 13418 => 1)) {
    if(quest::istaskactivityactive(141,4)) {
      plugin::Whisper("Ah, yes. Thank you.");
    }
    else {
      plugin::Whisper("I have no use for this, $name.");
      quest::summonitem(13418);
    }
  }
  else {
    plugin::Whisper("I have no use for this, $name.");
    plugin::return_items(\%itemcount);
  }
}