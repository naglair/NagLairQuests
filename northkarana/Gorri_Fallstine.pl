sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Sorry, $name. I am waiting for someone.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 10307 => 4) || plugin::check_handin(\%itemcount, 10307 => 3) || plugin::check_handin(\%itemcount, 10307 => 2) || plugin::check_handin(\%itemcount, 10307 => 1)) {
    plugin::Whisper("Ah, yes. Thank you, $name.");
  }
  else {
    plugin::Whisper("I do not need this.");
    plugin::return_items(\%itemcount);
  }
}