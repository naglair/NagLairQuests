# NPC: #Konus_Alatuk
#Angelox

sub EVENT_COMBAT{
    plugin::Whisper("If you expected a warm welcome here, you are quite mistaken!");
}

sub EVENT_DEATH_COMPLETE{
    quest::emote("'s corpse says 'You have bested me in fair fight.'");
 }

# EOF zone: dulak