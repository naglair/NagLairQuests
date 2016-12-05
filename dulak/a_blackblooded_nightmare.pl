# NPC: a_blackblooded_nightmare
#Angelox

sub EVENT_COMBAT{
    plugin::Whisper("Feel the wrath of Innoruuk!");
}

sub EVENT_DEATH_COMPLETE{
  quest::emote("clutches his chest and collapses to the ground");
 }

# EOF zone: dulak