sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("I've seen your kind dashing about. Just watch your footing, you never know when you might slip and fall.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Sentry_Kaop