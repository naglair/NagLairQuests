# NPC: a_trench_master
# Angelox

sub EVENT_COMBAT{
    plugin::Whisper("Your bones will crush beneath my feet");
}

sub EVENT_DEATH_COMPLETE{
  quest::emote("'s corpse blinks unbelievingly");
 }

# EOF zone: nadox