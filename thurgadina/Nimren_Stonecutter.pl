sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("The finest ore fresh from the mines I have! Take a look, why don't ye, $name. I'm sure I've got somethin' ye be needin'.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:thurgadina  ID:Not_Found -- Nimren_Stonecutter