#Quest file for Najena - Linara Parlone: Mystic Cloak

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Please [help] me out of this horrid place! My family must be terribly worried!");
  }
  if($text=~/help/i) {
    plugin::Whisper("If you can find the [key] to my restraints. I should be able to escape.");
  }
  if($text=~/key/i) {
    plugin::Whisper("Last I knew, Najena's priest had the key. I fear he has left this place though. I heard talk of traveling to some estate. I know not where. Oh dear, oh dear! I shall never leave this place!");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 12269 => 1)) { #tarnished bronze key
    plugin::Whisper("Oh thank you $name! I must make my escape now. Give this note to my father in Felwithe, he will reward you handsomely for your service.");
    quest::summonitem(5573); #Folded note
  }
  else {
    plugin::Whisper("I have no need for this, $name.");
    plugin::return_items(\%itemcount);
  }
}