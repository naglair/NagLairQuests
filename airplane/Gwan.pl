sub EVENT_SAY {
 if($text=~/hail/i){
  quest::emote("ignores you.");
 }
 if(($text=~/prepared/i) && ($ulevel >= 46) && ($class eq "Monk")) {
  # Monk Epic 1.0
  quest::attack($name);
 }
}

sub EVENT_SPAWN {
  # Monk Epic 1.0
  plugin::Whisper("Im ready when you are. Tell me when you are [prepared].");
}

sub EVENT_DEATH_COMPLETE {
  # Monk Epic 1.0
  quest::emote("lets out one last, frustrated breath and gasps.");
  plugin::Whisper("Trunt! Prepare yourself!");
}
# End of File