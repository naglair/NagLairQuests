sub EVENT_SAY {
  if ($text=~/hail/i) {
    if ($class eq "Berserker") { #Berserker Epic
      plugin::Whisper("Ah, I see you follow the arts of the berserker."); #Text made up
    }
    else {
      plugin::Whisper("You do not seem to follow the arts of the berserker, I'm afraid you cannot help me.");
    }
  }
}