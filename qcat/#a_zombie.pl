sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 18804 => 1)) {
    plugin::Whisper("Rele.. ase.. me.. from.. this.. tor.. ment.. ARGH! You will die for entering the domain of the Bloodsabers!! Karana.. help.. me?");
  }
  else {
    plugin::return_items(\%itemcount);
  }
}

sub EVENT_DEATH_COMPLETE {
  plugin::Whisper("ARGH!!!!!.. Thank.. you..");
}