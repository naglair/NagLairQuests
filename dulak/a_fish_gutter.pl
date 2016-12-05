# NPC: a_fisherman
#Angelox

sub EVENT_COMBAT{
    plugin::Whisper("Gutting a fish is one thing, but gutting an adventurer is real sport");
}

sub EVENT_DEATH_COMPLETE{
  plugin::Whisper("No! The end comes too soon");
 }

# EOF zone: dulak