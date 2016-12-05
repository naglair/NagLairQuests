sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Hail! I am the jail clerk of Highkeep. How may I be of service?");
  }
  if($text=~/fenn kaedrick/i) {
    plugin::Whisper("Why do you ask of that horrid rogue? We had him locked away with that high elf and then he got bailed out. I know of no reason why anyone would want to bail his bloody carcass out of our dungeon.");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I do not want that.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:highkeep  ID:6058 -- Jail_Clerk_Maryl