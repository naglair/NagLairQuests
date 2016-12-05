# NPC: a_Dirulia_crew_member
#Angelox

sub EVENT_COMBAT{
    plugin::Whisper("Come to pilfer some supplies, have you? The crew of Lady Dirulia is not to be trifled with!");
}

sub EVENT_DEATH_COMPLETE{
  plugin::Whisper("My comrades will be on you like flies to refuse");
 }

# EOF zone: dulak