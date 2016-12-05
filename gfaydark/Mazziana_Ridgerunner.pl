sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hello, $name.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13791 => 4) || plugin::check_handin(\%itemcount, 13791 => 3) || plugin::check_handin(\%itemcount, 13791 => 2) || plugin::check_handin(\%itemcount, 13791 => 1)) { #Orc Scalp
    plugin::Whisper("Ah, yes. Good work, thank you.");
  }
  else {
    plugin::Whisper("I do not need this.");
    plugin::return_items(\%itemcount);
  }
}