# NPC: Droga Mobs
# Angelox

sub EVENT_COMBAT{
 plugin::Whisper("The time has come for you to taste the might of my magic");
}

sub EVENT_DEATH_COMPLETE{
 quest::emote("'s corpse tries to mumble one last spell before falling over dead.");
 }

# Droga Mobs
