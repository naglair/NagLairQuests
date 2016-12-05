# NPC: treasure sorter
#Angelox

sub EVENT_COMBAT{
    plugin::Whisper("About time something interesting happened around here. Slaving away over other people's money was beginning to bore me!");
}

sub EVENT_DEATH_COMPLETE{
  plugin::Whisper("My comrades will be on you like flies to refuse");
 }

# EOF zone: dulak