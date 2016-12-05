# a_Broken_Skull_scout
#Angelox

sub EVENT_COMBAT{
    plugin::Whisper("Do you understand where you are? Your life was forfeit the moment you trespassed into Dulak's Harbor");
}

sub EVENT_DEATH_COMPLETE{
  plugin::Whisper("I didn't expect this when I awoke this morning.");
 }

# EOF zone: dulak