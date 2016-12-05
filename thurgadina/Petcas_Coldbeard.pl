sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Hail to ye as well offlander. I bid you welcome to the Icy Mug, one o' the finest establishments for a drink in Thurgadin. Whether it's [souvenirs] or stories yer lookin for, you've come to the right place.");
  }
  if($text=~/souvenirs/i) {
    plugin::Whisper("Here at the Icy Mug we have our own signature stein fer yer drinkin pleasure. For only 5 gold pieces ye can take one home to show yer kinfolk.");
  }
}

sub EVENT_ITEM {
  if($gold == 5) {
    plugin::Whisper("Here ya go!");
    quest::summonitem(30145); #The Icy Mug Souvenir Stein
  }
  else {
    plugin::Whisper("I have no need for this, $name.");
    plugin::return_items(\%itemcount);
  }
}
#END of FILE Zone:thurgadina  ID:Not_Found -- Petcas_Coldbeard