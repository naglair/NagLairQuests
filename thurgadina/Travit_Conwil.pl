sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Uuuhh, this be a private room, me friend. Mayhap ye should leave before somethin' unfortunate happens.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no need for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:thurgadina  ID:Not_Found -- Travit_Conwil