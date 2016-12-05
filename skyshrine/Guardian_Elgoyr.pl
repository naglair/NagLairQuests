sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("We were created to protect the Kin and the shrine from attack. This is what we've always done. Do not try to alter this.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Guardian_Elgoyr 